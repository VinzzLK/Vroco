.class public Lcom/miui/launcher/sosc/module/SoscEvent;
.super Ljava/lang/Object;
.source "SoscEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/sosc/module/SoscEvent$SoscMinimizedPosition;,
        Lcom/miui/launcher/sosc/module/SoscEvent$SoscState;
    }
.end annotation


# static fields
.field public static final MINIMIZED_POS_BOTTOM:I = 0x3

.field public static final MINIMIZED_POS_LEFT:I = 0x0

.field public static final MINIMIZED_POS_RIGHT:I = 0x2

.field public static final MINIMIZED_POS_TOP:I = 0x1

.field public static final SOCO_MINIMIZED_SIZE:I = 0x20

.field public static final SOSC_ANIM:I = 0x40

.field public static final SOSC_BOUNDS:I = 0x1

.field public static final SOSC_MINIMIZED:I = 0x8

.field public static final SOSC_MINIMIZED_POSITION:I = 0x10

.field public static final SOSC_SCALE:I = 0x4

.field public static final SOSC_STATE:I = 0x2

.field public static final STATE_ALL:I = 0x2

.field public static final STATE_APP_LEFT_TOP:I = 0x0

.field public static final STATE_APP_RIGHT_BOTTOM:I = 0x1

.field public static final STATE_FULL:I = -0x1


# instance fields
.field public anim:Z

.field public bounds:Landroid/graphics/Rect;

.field public cancel:Z

.field public isMinimized:Z

.field public lotTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public minimizedPosition:I

.field public minimizedSize:I

.field public robTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public rootBounds:Landroid/graphics/Rect;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    return-void
.end method

.method public constructor <init>(Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    .line 92
    invoke-virtual {p0, p1}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void
.end method

.method private getLauncherBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZII)Landroid/graphics/Rect;
    .locals 0

    .line 143
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    const/4 p1, -0x1

    if-ne p5, p1, :cond_1

    .line 150
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_1
    if-nez p6, :cond_2

    if-nez p5, :cond_2

    .line 152
    invoke-virtual {p0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    if-nez p6, :cond_3

    if-ne p5, p1, :cond_3

    .line 154
    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    if-eqz p6, :cond_4

    if-nez p7, :cond_4

    .line 156
    iput p8, p0, Landroid/graphics/Rect;->left:I

    .line 157
    iput p3, p0, Landroid/graphics/Rect;->top:I

    .line 158
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 159
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_4
    if-eqz p6, :cond_5

    if-ne p7, p1, :cond_5

    .line 161
    iput p3, p0, Landroid/graphics/Rect;->left:I

    .line 162
    iput p8, p0, Landroid/graphics/Rect;->top:I

    .line 163
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 164
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_5
    if-eqz p6, :cond_6

    const/4 p1, 0x2

    if-ne p7, p1, :cond_6

    .line 166
    iput p3, p0, Landroid/graphics/Rect;->left:I

    .line 167
    iput p3, p0, Landroid/graphics/Rect;->top:I

    .line 168
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, p8

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 169
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_6
    if-eqz p6, :cond_7

    const/4 p1, 0x3

    if-ne p7, p1, :cond_7

    .line 171
    iput p3, p0, Landroid/graphics/Rect;->left:I

    .line 172
    iput p3, p0, Landroid/graphics/Rect;->top:I

    .line 173
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 174
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, p8

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_7
    :goto_1
    return-object p0
.end method


# virtual methods
.method public buildUpSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 131
    invoke-direct/range {p0 .. p8}, Lcom/miui/launcher/sosc/module/SoscEvent;->getLauncherBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZII)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    .line 132
    iget-object p1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 133
    iput p5, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    .line 134
    iput-boolean p6, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    .line 135
    iput p7, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedPosition:I

    .line 136
    iput p8, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->cancel:Z

    .line 138
    iput-object p9, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->lotTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 139
    iput-object p10, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->robTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public diff(Lcom/miui/launcher/sosc/module/SoscEvent;)I
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 115
    iget v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    iget v2, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-eq v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    iget-boolean v2, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    if-eq v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x8

    .line 123
    :cond_1
    iget p0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedPosition:I

    iget p1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedPosition:I

    if-eq p0, p1, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    return v0
.end method

.method public isBottomLayout(I)Z
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 209
    iget-object p0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isHalfSoscSplit()Z
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 194
    iget-object v2, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 195
    iget-object v3, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object p0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-ne v0, v2, :cond_1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isHalfSoscSplitByState()Z
    .locals 1

    .line 184
    iget p0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isSoscRightBottom()Z
    .locals 1

    .line 188
    iget p0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSoscSplit()Z
    .locals 1

    .line 180
    iget p0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopLayout(Landroid/graphics/Rect;I)Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, p2

    iget-object p0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public reset()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 232
    iget-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, -0x1

    .line 233
    iput v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    .line 234
    iput-boolean v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    .line 235
    iput v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedPosition:I

    .line 236
    iput v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    .line 237
    iput-boolean v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->anim:Z

    return-void
.end method

.method public setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 97
    iget-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 98
    iget v0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    iput v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    .line 99
    iget-boolean v0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    iput-boolean v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    .line 100
    iget v0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedPosition:I

    iput v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedPosition:I

    .line 101
    iget v0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    iput v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    .line 102
    iget-boolean v0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->anim:Z

    iput-boolean v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->anim:Z

    .line 103
    iget-object v0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->lotTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->lotTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 104
    iget-object p1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->robTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->robTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rootBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMinimized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", minimizedPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minimizedSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->anim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cancel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->cancel:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
