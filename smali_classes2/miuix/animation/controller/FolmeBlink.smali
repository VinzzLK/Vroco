.class public Lmiuix/animation/controller/FolmeBlink;
.super Lmiuix/animation/controller/FolmeBase;
.source "FolmeBlink.java"

# interfaces
.implements Lmiuix/animation/IBlinkStyle;
.implements Lmiuix/animation/internal/BlinkStateSubject;


# static fields
.field private static final ALIAS_BLINK_HIGHLIGHT:Ljava/lang/String; = "blinkHighLight"

.field private static final ALIAS_BLINK_NORMAL:Ljava/lang/String; = "blinkNormal"


# instance fields
.field private mBlinkEnabled:Z

.field private mBlinkStateObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/BlinkStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mBlinkTask:Ljava/lang/Runnable;

.field mFlashCount:I

.field private mInterval:J

.field private mLimitCount:I

.field private mOriginFgs:[Landroid/graphics/drawable/Drawable;

.field private mStopConfig:Lmiuix/animation/base/AnimConfig;

.field private mTargets:[Lmiuix/animation/IAnimTarget;

.field private mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

.field private mToNormalConfig:Lmiuix/animation/base/AnimConfig;


# direct methods
.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 5

    .line 142
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lmiuix/animation/controller/FolmeBlink;->mInterval:J

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    .line 36
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkStateObserverList:Ljava/util/List;

    .line 40
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkEnabled:Z

    .line 42
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const-wide/16 v3, 0x258

    .line 43
    invoke-static {v3, v4}, Lmiuix/animation/FolmeEase;->cubicOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    .line 44
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const-wide/16 v3, 0x190

    .line 45
    invoke-static {v3, v4}, Lmiuix/animation/FolmeEase;->sinInOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 46
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const-wide/16 v3, 0x64

    .line 47
    invoke-static {v3, v4}, Lmiuix/animation/FolmeEase;->cubicOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/animation/controller/FolmeBlink;->mStopConfig:Lmiuix/animation/base/AnimConfig;

    .line 49
    new-instance v2, Lmiuix/animation/controller/FolmeBlink$1;

    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeBlink$1;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    iput-object v2, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkTask:Ljava/lang/Runnable;

    .line 143
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mTargets:[Lmiuix/animation/IAnimTarget;

    .line 144
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->saveOriginFgs([Lmiuix/animation/IAnimTarget;)V

    .line 145
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    new-instance v2, Lmiuix/animation/controller/AnimState;

    sget-object v3, Lmiuix/animation/IBlinkStyle$BlinkType;->HIGHLIGHT:Lmiuix/animation/IBlinkStyle$BlinkType;

    const-string v4, "blinkHighLight"

    invoke-direct {v2, v3, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->addState(Lmiuix/animation/controller/AnimState;)V

    .line 146
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    new-instance v2, Lmiuix/animation/controller/AnimState;

    sget-object v3, Lmiuix/animation/IBlinkStyle$BlinkType;->NORMAL:Lmiuix/animation/IBlinkStyle$BlinkType;

    const-string v4, "blinkNormal"

    invoke-direct {v2, v3, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->addState(Lmiuix/animation/controller/AnimState;)V

    .line 147
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeBlink;->setTintColor()V

    .line 148
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    new-array v2, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lmiuix/animation/controller/FolmeBlink$6;

    invoke-direct {v3, p0}, Lmiuix/animation/controller/FolmeBlink$6;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 166
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    new-array v2, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lmiuix/animation/controller/FolmeBlink$7;

    invoke-direct {v3, p0}, Lmiuix/animation/controller/FolmeBlink$7;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 176
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mStopConfig:Lmiuix/animation/base/AnimConfig;

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v2, Lmiuix/animation/controller/FolmeBlink$8;

    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeBlink$8;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    return-void
.end method

.method static synthetic access$000(Lmiuix/animation/controller/FolmeBlink;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkEnabled:Z

    return p0
.end method

.method static synthetic access$002(Lmiuix/animation/controller/FolmeBlink;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lmiuix/animation/controller/FolmeBlink;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/animation/controller/FolmeBlink;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/animation/controller/FolmeBlink;)I
    .locals 0

    .line 28
    iget p0, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/animation/controller/FolmeBlink;)[Lmiuix/animation/IAnimTarget;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mTargets:[Lmiuix/animation/IAnimTarget;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/animation/controller/FolmeBlink;[Lmiuix/animation/IAnimTarget;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->restoreOriginFgs([Lmiuix/animation/IAnimTarget;)V

    return-void
.end method

.method static synthetic access$600(Lmiuix/animation/controller/FolmeBlink;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeBlink;->doStartBlink()V

    return-void
.end method

.method private doStartBlink()V
    .locals 4

    .line 303
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkTask:Ljava/lang/Runnable;

    iget v2, p0, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lmiuix/animation/controller/FolmeBlink;->mInterval:J

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/IAnimTarget;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private restoreOriginFgs([Lmiuix/animation/IAnimTarget;)V
    .locals 3

    const/4 v0, 0x0

    .line 322
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 323
    aget-object v1, p1, v0

    .line 324
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lmiuix/animation/controller/FolmeBlink;->mOriginFgs:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveOriginFgs([Lmiuix/animation/IAnimTarget;)V
    .locals 3

    .line 310
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mOriginFgs:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 311
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 312
    aget-object v1, p1, v0

    .line 313
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lmiuix/animation/controller/FolmeBlink;->mOriginFgs:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setTargetValue(ILjava/lang/Object;)V
    .locals 1

    .line 247
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 248
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 249
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setTintColor()V
    .locals 5

    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 198
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 199
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    .line 200
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 201
    check-cast v1, Landroid/view/View;

    .line 202
    sget v0, Lmiuix/folme/R$color;->miuix_folme_color_blink_tint:I

    .line 203
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 205
    :cond_0
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 206
    iget-object v2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v3, Lmiuix/animation/IBlinkStyle$BlinkType;->HIGHLIGHT:Lmiuix/animation/IBlinkStyle$BlinkType;

    invoke-interface {v2, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    int-to-double v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 207
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/IBlinkStyle$BlinkType;->NORMAL:Lmiuix/animation/IBlinkStyle$BlinkType;

    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method


# virtual methods
.method public attach(Lmiuix/animation/internal/BlinkStateObserver;)V
    .locals 0

    .line 287
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkStateObserverList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public detach(Lmiuix/animation/internal/BlinkStateObserver;)V
    .locals 0

    .line 292
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkStateObserverList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyState(Z)V
    .locals 1

    .line 297
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkStateObserverList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/BlinkStateObserver;

    .line 298
    invoke-interface {v0, p1}, Lmiuix/animation/internal/BlinkStateObserver;->updateBlinkState(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetConfig()Lmiuix/animation/IBlinkStyle;
    .locals 5

    .line 61
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    const-wide/16 v1, 0x258

    invoke-static {v1, v2}, Lmiuix/animation/FolmeEase;->cubicOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lmiuix/animation/controller/FolmeBlink$2;

    invoke-direct {v3, p0}, Lmiuix/animation/controller/FolmeBlink$2;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 62
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 72
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    const-wide/16 v2, 0x190

    invoke-static {v2, v3}, Lmiuix/animation/FolmeEase;->sinInOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lmiuix/animation/controller/FolmeBlink$3;

    invoke-direct {v3, p0}, Lmiuix/animation/controller/FolmeBlink$3;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    aput-object v3, v2, v4

    .line 73
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 88
    iput v4, p0, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    const-wide/16 v2, 0x0

    .line 89
    iput-wide v2, p0, Lmiuix/animation/controller/FolmeBlink;->mInterval:J

    .line 90
    iput v1, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    return-object p0
.end method

.method public setBlinkPadding(FFFF)Lmiuix/animation/IBlinkStyle;
    .locals 2

    .line 221
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_padding_rect:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0, v1}, Lmiuix/animation/controller/FolmeBlink;->setTargetValue(ILjava/lang/Object;)V

    .line 222
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_location_mode:I

    const/4 p2, 0x4

    .line 223
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 222
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeBlink;->setTargetValue(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setBlinkRadius(F)Lmiuix/animation/IBlinkStyle;
    .locals 1

    .line 229
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_corners:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeBlink;->setTargetValue(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setBlinkRadius(FFFF)Lmiuix/animation/IBlinkStyle;
    .locals 2

    .line 235
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_corners:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0, v1}, Lmiuix/animation/controller/FolmeBlink;->setTargetValue(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setBlinkRect(Landroid/graphics/RectF;Lmiuix/animation/ITouchStyle$TouchRectGravity;)Lmiuix/animation/IBlinkStyle;
    .locals 1

    .line 212
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect:I

    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeBlink;->setTargetValue(ILjava/lang/Object;)V

    .line 213
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_gravity:I

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeBlink;->setTargetValue(ILjava/lang/Object;)V

    .line 214
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_location_mode:I

    const/16 p2, 0x1008

    .line 215
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 214
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeBlink;->setTargetValue(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setInterval(J)Lmiuix/animation/IBlinkStyle;
    .locals 0

    .line 131
    iput-wide p1, p0, Lmiuix/animation/controller/FolmeBlink;->mInterval:J

    return-object p0
.end method

.method public setLimitCount(I)Lmiuix/animation/IBlinkStyle;
    .locals 0

    .line 137
    iput p1, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    return-object p0
.end method

.method public setTintMode(I)Lmiuix/animation/IBlinkStyle;
    .locals 1

    .line 241
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 242
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public setToHighlightConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;
    .locals 3

    .line 97
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 98
    new-instance v1, Lmiuix/animation/controller/FolmeBlink$4;

    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeBlink$4;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public setToNormalConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;
    .locals 3

    .line 110
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 111
    new-instance v1, Lmiuix/animation/controller/FolmeBlink$5;

    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeBlink$5;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public varargs startBlink(I[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 267
    iput p1, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    .line 268
    array-length p1, p2

    const/4 v0, 0x1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 269
    aget-object v1, p2, p1

    invoke-virtual {p0, v1}, Lmiuix/animation/controller/FolmeBlink;->setToHighlightConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;

    .line 270
    array-length v1, p2

    if-le v1, v0, :cond_0

    aget-object p1, p2, p1

    aget-object v1, p2, v0

    if-eq p1, v1, :cond_0

    .line 271
    aget-object p1, p2, v0

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->setToNormalConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;

    .line 274
    :cond_0
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkEnabled:Z

    .line 275
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeBlink;->doStartBlink()V

    return-void
.end method

.method public varargs startBlink([Lmiuix/animation/base/AnimConfig;)V
    .locals 3

    .line 255
    array-length v0, p1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 256
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lmiuix/animation/controller/FolmeBlink;->setToHighlightConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;

    .line 257
    array-length v2, p1

    if-le v2, v1, :cond_0

    aget-object v0, p1, v0

    aget-object v2, p1, v1

    if-eq v0, v2, :cond_0

    .line 258
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->setToNormalConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;

    .line 261
    :cond_0
    iput-boolean v1, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkEnabled:Z

    .line 262
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeBlink;->doStartBlink()V

    return-void
.end method

.method public stopBlink()V
    .locals 4

    .line 281
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->removeTask(Ljava/lang/Runnable;)V

    .line 282
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IBlinkStyle$BlinkType;->NORMAL:Lmiuix/animation/IBlinkStyle$BlinkType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mStopConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
