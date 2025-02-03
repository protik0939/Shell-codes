#!/bin/bash

echo "Enter your marks:"
read marks

if [ $marks -ge 80 ] && [ $marks -le 100 ]; then
    grade="A+"
    grade_point="4.00"
    remarks="Outstanding"
elif [ $marks -ge 75 ]; then
    grade="A"
    grade_point="3.75"
    remarks="Excellent"
elif [ $marks -ge 70 ]; then
    grade="A-"
    grade_point="3.50"
    remarks="Very Good"
elif [ $marks -ge 65 ]; then
    grade="B+"
    grade_point="3.25"
    remarks="Good"
elif [ $marks -ge 60 ]; then
    grade="B"
    grade_point="3.00"
    remarks="Satisfactory"
elif [ $marks -ge 55 ]; then
    grade="B-"
    grade_point="2.75"
    remarks="Above Average"
elif [ $marks -ge 50 ]; then
    grade="C+"
    grade_point="2.50"
    remarks="Average"
elif [ $marks -ge 45 ]; then
    grade="C"
    grade_point="2.25"
    remarks="Below Average"
elif [ $marks -ge 40 ]; then
    grade="D"
    grade_point="2.00"
    remarks="Pass"
else
    grade="F"
    grade_point="0.00"
    remarks="Fail"
fi

echo "Grade: $grade"
echo "Grade Point: $grade_point"
echo "Remarks: $remarks"
