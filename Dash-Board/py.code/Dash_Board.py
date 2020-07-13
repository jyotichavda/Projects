#!/usr/bin/env python
# coding: utf-8

import pandas as pd #(version 0.24.2)
import datetime as dt
import dash         #(version 1.9.1)
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output
from dash.exceptions import PreventUpdate
import plotly       #(version 4.5.4)
import plotly.express as px
import plotly.graph_objs as go
from ipywidgets import interact, interactive, fixed, interact_manual
import ipywidgets as widgets
import numpy as np

print(dash.__version__)
print(dcc.__version__)
print(plotly.__version__)

external_stylesheets = ["https://codepen.io/chriddyp/pen/bWLwgP.css"]

stu_enrollment_counties = pd.read_csv("C:/Users/Imtiyaz/Desktop/Inernational_student_Dataset/enrolment_by_counties.csv")

International_student_enrollment = pd.read_csv("C:/Users/Imtiyaz/Desktop/Inernational_student_Dataset/clean_data/student_enrollment_by_year.csv")

Enrollment_by_Institute = pd.read_csv("C:/Users/Imtiyaz/Desktop/Inernational_student_Dataset/clean_data/student_enrollment_by_Institute_Final.csv")

df_new = pd.concat([stu_enrollment_counties,International_student_enrollment,Enrollment_by_Institute], axis=0, ignore_index=True)

df_new.columns

df_new_1 = df_new.loc[(df_new['Student_Origin'] == 'All counties (2)') | (df_new['Countries'] == 'All countries')]

df_new_1 = df_new_1.replace(np.nan, '', regex=True)

df_new_1['total_number'] = df_new_1[['Student_Origin', 'Countries']].apply(lambda x: ' '.join(x), axis = 1) 

df_new_1 = df_new_1.drop(['Counties', 'Student_Origin', 'Countries', 'Study_Mode', 'Institute'], axis=1)

df_new_1 = df_new_1.replace('All counties (2)','Irish Studnet', regex=True)

df_new_1 = df_new_1.replace('All countries','International Student', regex=True)

print(df_new_1)

#df_new.to_csv(r'C:/Users/Imtiyaz/Desktop/Inernational_student_Dataset/clean_data/df_new.csv' , index=False)

app = dash.Dash(__name__,external_stylesheets=external_stylesheets)


app.layout = html.Div([


    html.Div([
            html.Pre(children= "Student Enrollment in Ireland", 
                     style={"text-align" : "center", "font-size" : "30px", "color" : "black", "font-weight" : "bold"}),
            ]),
    
    html.Div([
        html.Label(['Choose column:'],style={'font-weight': 'bold'}),
        dcc.Dropdown(
            id='xaxis_raditem',
            options=[
                {'label': 'Counties', 'value': 'Counties'},
                {'label': 'Student_Origin', 'value': 'Student_Origin'}
            ],
            value='Student_Origin',     #dropdown value selected automatically when page loads
            disabled=False,             #disable dropdown value selection
            multi=False,                #allow multiple dropdown values to be selected
            searchable=True,            #allow user-searching of dropdown values
            clearable=True,             #allow user to removes the selected value
            style={'width':"50%"},
           
        ),
    ]),
    
    html.Br(),
    
    html.Div([
        html.Label(['Choose Year:'],style={'font-weight': 'bold'}),
        dcc.Dropdown(
            id='yaxis_raditem',
            options=[
                     {'label': '2000', 'value': '2000'},
                     {'label': '2001', 'value': '2001'},
                     {'label': '2002', 'value': '2002'},
                     {'label': '2003', 'value': '2003'},
                     {'label': '2004', 'value': '2004'},
                     {'label': '2005', 'value': '2005'},
                     {'label': '2006', 'value': '2006'},
                     {'label': '2007', 'value': '2007'},
                     {'label': '2008', 'value': '2008'},
                     {'label': '2009', 'value': '2009'},
                     {'label': '2010', 'value': '2010'},
                     {'label': '2011', 'value': '2011'},
                     {'label': '2012', 'value': '2012'},
                     {'label': '2013', 'value': '2013'},
                     {'label': '2014', 'value': '2014'},
                     {'label': '2015', 'value': '2015'},
                     {'label': '2016', 'value': '2016'},
                     {'label': '2017', 'value': '2017'}
            ],
            value='2000',               #dropdown value selected automatically when page loads
            disabled=False,             #disable dropdown value selection
            multi=False,                #allow multiple dropdown values to be selected
            searchable=True,            #allow user-searching of dropdown values
            clearable=True,             #allow user to removes the selected value
            style={'width':"50%"},
        ),
    ]),
    
        html.Div([
        dcc.Graph(id='the_graph_3') 
        ]),
    
    html.Hr(),
    
    html.Div([
        dcc.Graph(id='the_graph'),

        ]),
    
    html.Hr(),
    
    html.Div([
        dcc.Graph(id='the_graph_1') 
        ]),
    
    html.Hr(),
    
    html.Div([
        dcc.Graph(id='the_graph_2') 
        ]),
    
])



@app.callback(
    Output(component_id='the_graph_3', component_property='figure'),
    [Input(component_id='yaxis_raditem', component_property='value')]
)

def update_graph(yaxis_raditem):
    dff = df_new_1

    piechart=px.pie(
            data_frame=dff,
            names=dff.total_number,
            values=yaxis_raditem,
            title='Comparison of Irish and International students Enrollment',
            hole=.3,
            )
    
    piechart.update_layout(title={'xanchor':'center', 'yanchor': 'top', 'y':0.9,'x':0.5,})
    
    return (piechart)




@app.callback(
    Output(component_id='the_graph', component_property='figure'),
    [Input(component_id='xaxis_raditem', component_property='value'),
     Input(component_id='yaxis_raditem', component_property='value')]
)

def update_graph(xaxis_raditem, yaxis_raditem):

    #dff = df_new.iloc[:,0:20]
    dff = df_new.iloc[0:442,0:20]
    dff=dff.fillna(0)
    
    barchart=px.bar(
            data_frame=dff,
            x=xaxis_raditem,
            y=yaxis_raditem,
            title= 'Irish Student Enrollment by their Counties',
            )

    barchart.update_layout(xaxis={'categoryorder':'total ascending'},
                           #yaxis={'title': 'Number of Students', 'range': [100, 200000]},
                           title={'xanchor':'center', 'yanchor': 'top', 'y':0.9,'x':0.5,})

    return (barchart)


@app.callback(
     Output(component_id='the_graph_1', component_property='figure'),
    [Input(component_id='yaxis_raditem', component_property='value')]
)

def update_output(y_axis):
    
    dff = df_new.iloc[:,2:21]
    
    fig = px.choropleth(dff, locations=dff.Countries,
                        color=y_axis,
                        hover_name=dff.Countries,
                        projection='natural earth',
                        locationmode='country names',
                        title='International Student Enrollment',
                        #color_continuous_scale= [[0, 'green'], [0.2, 'red'], [1.0, 'rgb(0, 0, 255)']],
                        color_continuous_scale=px.colors.diverging.BrBG,
                        range_color=(100, 15000),
                       )

    fig.update_layout(title=dict(x=0.5,xanchor='center'),
                      margin=dict(l=60, r=60, t=50, b=50))
    
    return (fig)



@app.callback(
    Output(component_id='the_graph_2', component_property='figure'), 
    [Input(component_id='yaxis_raditem', component_property='value')]
)

def update_graph(y_axis):

    dff = df_new.iloc[479:607]
    dff=dff.fillna(0)
    barchart = px.bar(data_frame=dff,
                      x=dff.Institute,
                      y=y_axis,
                      color=dff.Study_Mode,               
                      title='Student Enrollment by Institite'
                     )

    barchart.update_layout(xaxis={'categoryorder':'total ascending'},
                           title={'xanchor':'center', 'yanchor': 'top', 'y':0.9,'x':0.5,})

    return (barchart)


if __name__ == '__main__':
    app.run_server(debug=False)






