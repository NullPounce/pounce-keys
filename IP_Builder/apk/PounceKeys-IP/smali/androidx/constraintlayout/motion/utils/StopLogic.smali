.class public Landroidx/constraintlayout/motion/utils/StopLogic;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "StopLogic.java"


# instance fields
.field private mBackwards:Z

.field private mLastPosition:F

.field private mNumberOfStages:I

.field private mStage1Duration:F

.field private mStage1EndPosition:F

.field private mStage1Velocity:F

.field private mStage2Duration:F

.field private mStage2EndPosition:F

.field private mStage2Velocity:F

.field private mStage3Duration:F

.field private mStage3EndPosition:F

.field private mStage3Velocity:F

.field private mStartPosition:F

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    return-void
.end method

.method private calcY(F)F
    .locals 5
    .param p1, "time"    # F

    .line 112
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v1, :cond_0

    .line 113
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    mul-float v3, v1, p1

    iget v4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    sub-float/2addr v4, v1

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    mul-float/2addr v0, v2

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    return v3

    .line 115
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 116
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    return v0

    .line 118
    :cond_1
    sub-float/2addr p1, v0

    .line 119
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v3, p1, v0

    if-gez v3, :cond_2

    .line 121
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    iget v3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    mul-float v4, v3, p1

    add-float/2addr v1, v4

    iget v4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    mul-float/2addr v0, v2

    div-float/2addr v4, v0

    add-float/2addr v1, v4

    return v1

    .line 123
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 124
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    return v0

    .line 126
    :cond_3
    sub-float/2addr p1, v0

    .line 127
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    .line 129
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    iget v3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    mul-float v4, v3, p1

    add-float/2addr v1, v4

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    mul-float/2addr v0, v2

    div-float/2addr v3, v0

    sub-float/2addr v1, v3

    return v1

    .line 131
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    return v0
.end method

.method private setup(FFFFF)V
    .locals 15
    .param p1, "velocity"    # F
    .param p2, "distance"    # F
    .param p3, "maxAcceleration"    # F
    .param p4, "maxVelocity"    # F
    .param p5, "maxTime"    # F

    .line 160
    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    const/4 v3, 0x0

    cmpl-float v4, p1, v3

    if-nez v4, :cond_0

    .line 161
    const v4, 0x38d1b717    # 1.0E-4f

    .end local p1    # "velocity":F
    .local v4, "velocity":F
    goto :goto_0

    .line 160
    .end local v4    # "velocity":F
    .restart local p1    # "velocity":F
    :cond_0
    move/from16 v4, p1

    .line 163
    .end local p1    # "velocity":F
    .restart local v4    # "velocity":F
    :goto_0
    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    .line 164
    div-float v5, v4, p3

    .line 165
    .local v5, "min_time_to_stop":F
    mul-float v6, v5, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 167
    .local v6, "stopDistance":F
    cmpg-float v8, v4, v3

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-gez v8, :cond_2

    .line 168
    neg-float v8, v4

    div-float v8, v8, p3

    .line 169
    .local v8, "timeToZeroVelocity":F
    mul-float v11, v8, v4

    div-float/2addr v11, v7

    .line 170
    .local v11, "reversDistanceTraveled":F
    sub-float v12, v1, v11

    .line 171
    .local v12, "totalDistance":F
    mul-float v13, p3, v12

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 172
    .local v13, "peak_v":F
    cmpg-float v14, v13, v2

    if-gez v14, :cond_1

    .line 173
    const-string v9, "backward accelerate, decelerate"

    iput-object v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    .line 174
    iput v10, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    .line 175
    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    .line 176
    iput v13, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    .line 177
    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    .line 178
    sub-float v3, v13, v4

    div-float v3, v3, p3

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    .line 179
    div-float v9, v13, p3

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    .line 180
    add-float v9, v4, v13

    mul-float/2addr v9, v3

    div-float/2addr v9, v7

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    .line 181
    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    .line 182
    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    .line 183
    return-void

    .line 185
    :cond_1
    const-string v3, "backward accelerate cruse decelerate"

    iput-object v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    .line 186
    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    .line 187
    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    .line 188
    iput v2, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    .line 189
    iput v2, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    .line 191
    sub-float v3, v2, v4

    div-float v3, v3, p3

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    .line 192
    div-float v9, v2, p3

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    .line 193
    add-float v10, v4, v2

    mul-float/2addr v10, v3

    div-float/2addr v10, v7

    .line 194
    .local v10, "accDist":F
    mul-float v3, v2, v9

    div-float/2addr v3, v7

    .line 195
    .local v3, "decDist":F
    sub-float v7, v1, v10

    sub-float/2addr v7, v3

    div-float/2addr v7, v2

    iput v7, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    .line 196
    iput v10, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    .line 197
    sub-float v7, v1, v3

    iput v7, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    .line 198
    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    .line 199
    return-void

    .line 202
    .end local v3    # "decDist":F
    .end local v8    # "timeToZeroVelocity":F
    .end local v10    # "accDist":F
    .end local v11    # "reversDistanceTraveled":F
    .end local v12    # "totalDistance":F
    .end local v13    # "peak_v":F
    :cond_2
    cmpl-float v8, v6, v1

    if-ltz v8, :cond_3

    .line 204
    const-string v8, "hard stop"

    iput-object v8, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    .line 205
    mul-float/2addr v7, v1

    div-float/2addr v7, v4

    .line 206
    .local v7, "time":F
    const/4 v8, 0x1

    iput v8, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    .line 207
    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    .line 208
    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    .line 209
    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    .line 210
    iput v7, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    .line 211
    return-void

    .line 214
    .end local v7    # "time":F
    :cond_3
    sub-float v8, v1, v6

    .line 215
    .local v8, "distance_before_break":F
    div-float v11, v8, v4

    .line 216
    .local v11, "cruseTime":F
    add-float v12, v11, v5

    cmpg-float v12, v12, p5

    if-gez v12, :cond_4

    .line 217
    const-string v7, "cruse decelerate"

    iput-object v7, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    .line 218
    iput v10, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    .line 219
    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    .line 220
    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    .line 221
    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    .line 222
    iput v8, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    .line 223
    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    .line 224
    iput v11, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    .line 225
    div-float v3, v4, p3

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    .line 226
    return-void

    .line 229
    :cond_4
    mul-float v12, p3, v1

    mul-float v13, v4, v4

    div-float/2addr v13, v7

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 230
    .local v12, "peak_v":F
    sub-float v13, v12, v4

    div-float v13, v13, p3

    iput v13, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    .line 231
    div-float v13, v12, p3

    iput v13, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    .line 232
    cmpg-float v13, v12, v2

    if-gez v13, :cond_5

    .line 233
    const-string v9, "accelerate decelerate"

    iput-object v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    .line 234
    iput v10, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    .line 235
    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    .line 236
    iput v12, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    .line 237
    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    .line 238
    sub-float v3, v12, v4

    div-float v3, v3, p3

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    .line 239
    div-float v9, v12, p3

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    .line 240
    add-float v9, v4, v12

    mul-float/2addr v9, v3

    div-float/2addr v9, v7

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    .line 241
    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    .line 243
    return-void

    .line 245
    :cond_5
    const-string v3, "accelerate cruse decelerate"

    iput-object v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    .line 247
    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    .line 248
    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    .line 249
    iput v2, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    .line 250
    iput v2, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    .line 252
    sub-float v3, v2, v4

    div-float v3, v3, p3

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    .line 253
    div-float v9, v2, p3

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    .line 254
    add-float v10, v4, v2

    mul-float/2addr v10, v3

    div-float/2addr v10, v7

    .line 255
    .restart local v10    # "accDist":F
    mul-float v3, v2, v9

    div-float/2addr v3, v7

    .line 257
    .restart local v3    # "decDist":F
    sub-float v7, v1, v10

    sub-float/2addr v7, v3

    div-float/2addr v7, v2

    iput v7, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    .line 258
    iput v10, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    .line 259
    sub-float v7, v1, v3

    iput v7, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    .line 260
    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    .line 261
    return-void
.end method


# virtual methods
.method public config(FFFFFF)V
    .locals 6
    .param p1, "currentPos"    # F
    .param p2, "destination"    # F
    .param p3, "currentVelocity"    # F
    .param p4, "maxTime"    # F
    .param p5, "maxAcceleration"    # F
    .param p6, "maxVelocity"    # F

    .line 137
    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStartPosition:F

    .line 138
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    .line 139
    if-eqz v0, :cond_1

    .line 140
    neg-float v1, p3

    sub-float v2, p1, p2

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/utils/StopLogic;->setup(FFFFF)V

    goto :goto_1

    .line 142
    :cond_1
    sub-float v2, p2, p1

    move-object v0, p0

    move v1, p3

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/utils/StopLogic;->setup(FFFFF)V

    .line 144
    :goto_1
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "time"    # F

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ===== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    if-eqz v1, :cond_0

    const-string v1, "backwards"

    goto :goto_0

    :cond_0
    const-string v1, "forward "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  stages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " vel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " pos "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v5, 0x2

    if-le v0, v5, :cond_2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "stage 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 65
    :cond_3
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    if-ne v1, v4, :cond_4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "end stage 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 69
    :cond_4
    sub-float/2addr p3, v0

    .line 70
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v2, p3, v0

    if-gez v2, :cond_5

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stage 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 75
    :cond_5
    if-ne v1, v5, :cond_6

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "end stage 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 79
    :cond_6
    sub-float/2addr p3, v0

    .line 80
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_7

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stage 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 85
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end stage 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public getInterpolation(F)F
    .locals 2
    .param p1, "v"    # F

    .line 148
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/utils/StopLogic;->calcY(F)F

    move-result v0

    .line 149
    .local v0, "y":F
    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mLastPosition:F

    .line 150
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStartPosition:F

    sub-float/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStartPosition:F

    add-float/2addr v1, v0

    :goto_0
    return v1
.end method

.method public getVelocity()F
    .locals 1

    .line 155
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mLastPosition:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/utils/StopLogic;->getVelocity(F)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mLastPosition:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/utils/StopLogic;->getVelocity(F)F

    move-result v0

    :goto_0
    return v0
.end method

.method public getVelocity(F)F
    .locals 3
    .param p1, "x"    # F

    .line 89
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 90
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iget v2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1

    .line 92
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 93
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_1
    sub-float/2addr p1, v0

    .line 96
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    .line 98
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iget v2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1

    .line 100
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 101
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    return v0

    .line 103
    :cond_3
    sub-float/2addr p1, v0

    .line 104
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    .line 106
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    mul-float v2, v1, p1

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    return v1

    .line 108
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    return v0
.end method
