.class public Lcom/miui/home/recents/anim/SpringBundle$Builder;
.super Ljava/lang/Object;
.source "SpringBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/SpringBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dampingRatio:F

.field private finalPosition:F

.field private minimumVisibleChange:F

.field private startValue:F

.field private startVelocity:F

.field private stiffness:F

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/home/recents/anim/SpringBundle;
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 362
    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->dampingRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 365
    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->stiffness:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->dampingRatio:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->stiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->finalPosition:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->type:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;Lcom/miui/home/recents/anim/SpringBundle$1;)V

    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->startValue:F

    .line 370
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/anim/SpringBundle;->setStartValue(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->minimumVisibleChange:F

    .line 371
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->startVelocity:F

    .line 372
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/anim/SpringBundle;->setStartVelocity(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p0

    return-object p0

    .line 366
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "stiffness not allow empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 363
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "dampingRatio not allow empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 360
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "type not allow empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDampingRatio(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;
    .locals 0

    .line 324
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->dampingRatio:F

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;
    .locals 0

    .line 344
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->minimumVisibleChange:F

    return-object p0
.end method

.method public setStiffness(F)Lcom/miui/home/recents/anim/SpringBundle$Builder;
    .locals 0

    .line 329
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->stiffness:F

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle$Builder;
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/miui/home/recents/anim/SpringBundle$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
