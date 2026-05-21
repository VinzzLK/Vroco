.class public Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;
.super Ljava/lang/Object;
.source "MultiSpringDynamicAnimation.java"

# interfaces
.implements Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;
.implements Lcom/miui/home/recents/anim/IValueCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$Callback;,
        Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;,
        Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;,
        Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;
    }
.end annotation


# instance fields
.field public BUNDLE_NUM:I

.field private TAG:Ljava/lang/String;

.field endState:Z

.field private mEndEnable:Z

.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEndRequested:Z

.field private mLastFrameTimeNanos:J

.field mMaxValue:F

.field mMinValue:F

.field volatile mRunning:Z

.field private final mSpringBundleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/home/recents/anim/SpringBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$aSrjZ9WeyvXEscl_ZtfLcJ95p5c(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;Lcom/miui/home/recents/anim/SpringBundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->lambda$start$0(Lcom/miui/home/recents/anim/SpringBundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cIeyuZYhP0LauGllvc51g6zYF9I(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;J[ZLcom/miui/home/recents/anim/SpringBundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->lambda$doAnimationFrame$1(J[ZLcom/miui/home/recents/anim/SpringBundle;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MultiSpringDynamicAnimation"

    .line 25
    iput-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 31
    iput v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mMaxValue:F

    neg-float v1, v1

    .line 32
    iput v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mMinValue:F

    const-wide/16 v1, 0x0

    .line 35
    iput-wide v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mLastFrameTimeNanos:J

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    const/16 v1, 0xc

    .line 44
    iput v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->BUNDLE_NUM:I

    .line 47
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->BUNDLE_NUM:I

    invoke-static {v2}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->capacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mSpringBundleMap:Ljava/util/Map;

    .line 51
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndRequested:Z

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->endState:Z

    .line 54
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndEnable:Z

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method static capacity(I)I
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method

.method private endAnimationInternal(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->endState:Z

    if-nez p1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->isEndEnable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/anim/AnimationHandler;->getInstance()Lcom/miui/home/recents/anim/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/home/recents/anim/AnimationHandler;->removeCallback(Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;)V

    .line 251
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->isEndEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->setEndEnable(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    const-wide/16 v1, 0x0

    .line 255
    iput-wide v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mLastFrameTimeNanos:J

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 257
    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;

    invoke-interface {v1, p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->removeNullEntries(Ljava/util/List;)V

    return-void
.end method

.method private forAllSpringBundle(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$Callback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mSpringBundleMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 339
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 341
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/anim/SpringBundle;

    if-eqz v0, :cond_1

    .line 343
    invoke-interface {p1, v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$Callback;->apply(Lcom/miui/home/recents/anim/SpringBundle;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$doAnimationFrame$1(J[ZLcom/miui/home/recents/anim/SpringBundle;)V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndRequested:Z

    invoke-virtual {p4, p1, p2, v0}, Lcom/miui/home/recents/anim/SpringBundle;->updateValueAndVelocity(JZ)Z

    move-result p1

    .line 213
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndRequested:Z

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 214
    aput-boolean p0, p3, p0

    :cond_0
    return-void
.end method

.method private synthetic lambda$start$0(Lcom/miui/home/recents/anim/SpringBundle;)V
    .locals 3

    .line 150
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    .line 152
    iget v2, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mMaxValue:F

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_1

    .line 155
    iget p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mMinValue:F

    cmpg-float p0, v1, p0

    if-ltz p0, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getValueThreshold()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->setValueThreshold(Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Object;)V

    return-void

    .line 156
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static removeNullEntries(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 134
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 135
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 136
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startAnimationInternal()V
    .locals 3

    .line 179
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->endState:Z

    .line 182
    invoke-static {}, Lcom/miui/home/recents/anim/AnimationHandler;->getInstance()Lcom/miui/home/recents/anim/AnimationHandler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/home/recents/anim/AnimationHandler;->addAnimationFrameCallback(Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addEndListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 280
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mSpringBundleMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public addUpdateListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    .line 123
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancel()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->TAG:Ljava/lang/String;

    const-string v1, "TransitionTest cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 170
    invoke-direct {p0, v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->endAnimationInternal(Z)V

    :cond_0
    return-void
.end method

.method public containsEndListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;)Z
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public doAnimationFrame(J)Z
    .locals 4

    .line 192
    iget-wide v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mLastFrameTimeNanos:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 194
    iput-wide p1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mLastFrameTimeNanos:J

    .line 195
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->notifyAnimUpdate()V

    return v3

    :cond_0
    sub-long v0, p1, v0

    .line 199
    iput-wide p1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mLastFrameTimeNanos:J

    const/4 p1, 0x1

    new-array p2, p1, [Z

    aput-boolean p1, p2, v3

    .line 205
    new-instance p1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;J[Z)V

    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->forAllSpringBundle(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$Callback;)V

    .line 218
    iget-boolean p1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndRequested:Z

    if-eqz p1, :cond_1

    .line 219
    iput-boolean v3, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndRequested:Z

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->notifyAnimUpdate()V

    aget-boolean p1, p2, v3

    if-eqz p1, :cond_2

    .line 225
    invoke-direct {p0, v3}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->endAnimationInternal(Z)V

    :cond_2
    aget-boolean p0, p2, v3

    return p0
.end method

.method public getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mSpringBundleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/anim/SpringBundle;

    if-nez v0, :cond_0

    .line 304
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR Not Found Bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public getRealEndState()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->endState:Z

    return p0
.end method

.method public getSpring(Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mSpringBundleMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/anim/SpringBundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    return-object p0
.end method

.method public getSpringBundleMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/home/recents/anim/SpringBundle;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mSpringBundleMap:Ljava/util/Map;

    return-object p0
.end method

.method public getValue(Ljava/lang/String;F)F
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mSpringBundleMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/anim/SpringBundle;

    if-eqz p0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public isEndEnable()Z
    .locals 0

    .line 231
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndEnable:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    return p0
.end method

.method notifyAnimUpdate()V
    .locals 2

    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;

    invoke-interface {v1, p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->removeNullEntries(Ljava/util/List;)V

    return-void
.end method

.method public removeEndListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeSpringBundle(Ljava/lang/String;)V
    .locals 1

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mSpringBundleMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEndEnable(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndEnable:Z

    return-void
.end method

.method public setEndRequested(Z)V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionTest endRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndRequested:Z

    return-void
.end method

.method public skipToEnd()V
    .locals 2

    .line 326
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 329
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 330
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->setEndRequested(Z)V

    :cond_0
    return-void

    .line 327
    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start()V
    .locals 1

    .line 149
    new-instance v0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V

    invoke-direct {p0, v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->forAllSpringBundle(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$Callback;)V

    .line 162
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->startAnimationInternal()V

    :cond_0
    return-void
.end method
