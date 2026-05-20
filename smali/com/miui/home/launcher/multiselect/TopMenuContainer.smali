.class public abstract Lcom/miui/home/launcher/multiselect/TopMenuContainer;
.super Landroid/widget/LinearLayout;
.source "TopMenuContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# static fields
.field private static final GONE_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field private static final NORMAL_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final NORMAL_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field private static final PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;


# instance fields
.field protected TAG:Ljava/lang/String;

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

.field private mImageResourceDarkWallpaper:I

.field private mImageResourceLightWallpaper:I

.field private mImageView:Landroid/widget/ImageView;

.field private mIsEditMode:Z

.field private mIsFinishMenu:Z

.field private mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

.field private mTopMenuContainerGoogleAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

.field protected mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;


# direct methods
.method public static synthetic $r8$lambda$B5NEoctI5eISkp7ZrbQ68W4Cz3Q(Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->lambda$onWallpaperColorChanged$0(Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0606ae

    invoke-direct {v0, v1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 39
    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v2, 0x7f0606b1

    invoke-direct {v1, v2, v2}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v1, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->NORMAL_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 40
    new-instance v2, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v3, 0x7f0606b3

    invoke-direct {v2, v3, v3}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v2, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 42
    new-instance v3, Lcom/miui/home/launcher/multiselect/TopMenuState;

    const-string v4, "gone"

    invoke-direct {v3, v0, v4}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v3, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 43
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuState;

    const-string v3, "normal"

    invoke-direct {v0, v1, v3}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->NORMAL_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 44
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuState;

    const-string v1, "pressed"

    invoke-direct {v0, v2, v1}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "Launcher.TopMenuButton"

    .line 34
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->TAG:Ljava/lang/String;

    .line 36
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 287
    new-instance p1, Lcom/miui/home/launcher/multiselect/TopMenuContainer$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer$1;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Launcher."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->TAG:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    new-instance p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    .line 64
    new-instance p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerGoogleAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->reset()V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/multiselect/TopMenuContainer;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mIsEditMode:Z

    return p1
.end method

.method private animateWithFolme(Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->resetView()V

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerGoogleAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->cancelAnim()V

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->changeStateWithAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    return-void
.end method

.method private animateWithGoogle(Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->cancelFolmeAnim()V

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerGoogleAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->changeStateWithAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    return-void
.end method

.method private cancelFolmeAnim()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->cancelAnim()V

    .line 137
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->resetView()V

    return-void
.end method

.method private getAllTopMenuStates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/multiselect/TopMenuState;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 272
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getNormalState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onWallpaperColorChanged$0(Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 0

    .line 279
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuState;->onWallpaperColorChanged()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x4

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    sget-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setTopMenuContainerTopMenuState(Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    return-void
.end method

.method private resetView()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 119
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    return-void
.end method

.method private setTopMenuContainerTopMenuState(Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-void
.end method

.method private updateImageViewResource()V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mIsFinishMenu:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageResourceLightWallpaper:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageResourceDarkWallpaper:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected changeStateWhenPressed(Landroid/view/MotionEvent;)V
    .locals 3

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p0, v1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToNormalState(ZZ)V

    .line 258
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->hasTouchAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isNormalState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToPressedState(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->hasTouchAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public changeToGoneState(ZZ)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;ZZ)V

    return-void
.end method

.method public changeToMaskLayerState(Z)V
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getMaskLayerState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;ZZ)V

    return-void
.end method

.method public changeToNormalState(ZZ)V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getNormalState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;ZZ)V

    return-void
.end method

.method public changeToPressedState(Z)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;ZZ)V

    return-void
.end method

.method public folmeComplete(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 205
    sget-object p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method protected getMaskLayerState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getNormalState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 201
    sget-object p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->NORMAL_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method protected getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 232
    sget-object p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method protected hasTouchAnim()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isGoneState()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNormalState()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getNormalState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isPressedState()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isState(Lcom/miui/home/launcher/multiselect/TopMenuState;)Z
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 301
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 302
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 307
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 308
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a03cb

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 82
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 83
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 84
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    sub-float/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeStateWhenPressed(Landroid/view/MotionEvent;)V

    .line 223
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 277
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getAllTopMenuStates()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/multiselect/TopMenuContainer$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/multiselect/TopMenuContainer$$ExternalSyntheticLambda0;

    .line 278
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 281
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 282
    sget-object v1, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;ZZ)V

    .line 283
    invoke-virtual {p0, v0, v2, v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;ZZ)V

    .line 284
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageViewResource()V

    return-void
.end method

.method protected setImageResource(II)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setImageResource(IIZ)V

    return-void
.end method

.method protected setImageResource(IIZ)V
    .locals 0

    .line 106
    iput-boolean p3, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mIsFinishMenu:Z

    .line 107
    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageResourceDarkWallpaper:I

    .line 108
    iput p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageResourceLightWallpaper:I

    .line 109
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageViewResource()V

    return-void
.end method

.method protected updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;ZZ)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    if-eq v0, p1, :cond_8

    if-eqz p1, :cond_8

    .line 143
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setTopMenuContainerTopMenuState(Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isGoneState()Z

    move-result p1

    if-nez p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    instance-of p1, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update top menu container state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ", change with folme"

    if-eqz p2, :cond_7

    .line 154
    instance-of p2, p0, Lcom/miui/home/launcher/ButtonDropTarget;

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mIsEditMode:Z

    if-nez p2, :cond_2

    .line 155
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->animateWithFolme(Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    goto/16 :goto_2

    .line 156
    :cond_2
    instance-of p2, p0, Lcom/miui/home/launcher/multiselect/ApplyContainer;

    if-nez p2, :cond_6

    instance-of p2, p0, Lcom/miui/home/launcher/multiselect/CancelContainer;

    if-eqz p2, :cond_3

    goto :goto_1

    .line 159
    :cond_3
    iget-boolean p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mIsEditMode:Z

    const-string/jumbo v1, "updateContainer view: "

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    goto :goto_0

    .line 163
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->animateWithFolme(Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    goto :goto_2

    .line 160
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", change with google"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->animateWithGoogle(Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    goto :goto_2

    .line 157
    :cond_6
    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->animateWithFolme(Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    goto :goto_2

    .line 168
    :cond_7
    iget-object p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateContainer no anim view: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->cancelFolmeAnim()V

    .line 170
    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimationIfNeeded(Landroid/view/View;)V

    .line 171
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->changeStateWithoutAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public updateImageAndTextColor(FIIII)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 72
    iget-object p3, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p1, p4, p5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 73
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageAndTextColor(II)V

    return-void
.end method

.method public updateImageAndTextColor(II)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageView:Landroid/widget/ImageView;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
