### Different ways to nest ifelse statements

ifelse(<condition>, <yes>, ifelse(<condition>, <yes>, <no>))

ifelse(<condition>, ifelse(<condition>, <yes>, <no>), <no>)

ifelse(<condition>, 
       ifelse(<condition>, <yes>, <no>), 
       ifelse(<condition>, <yes>, <no>)
      )

ifelse(<condition>, <yes>, 
       ifelse(<condition>, <yes>, 
              ifelse(<condition>, <yes>, <no>)
             )
       )
