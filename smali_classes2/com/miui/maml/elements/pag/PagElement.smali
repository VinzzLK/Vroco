.class public Lcom/miui/maml/elements/pag/PagElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "PagElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PagElement"

.field public static final TAG_NAME:Ljava/lang/String; = "PagView"


# instance fields
.field private mAutoPlay:Z

.field protected mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

.field protected mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mLoop:I

.field private mPagFile:Lorg/libpag/PAGFile;

.field private mPagView:Lorg/libpag/PAGView;

.field private mPath:Ljava/lang/String;

.field private mProgressProperty:Lcom/miui/maml/data/IndexedVariable;

.field private mScaleMode:I

.field private mSetPath:Z

.field private mSrcFormatter:Lcom/miui/maml/util/TextFormatter;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    const-string p2, ""

    .line 50
    iput-object p2, p0, Lcom/miui/maml/elements/pag/PagElement;->mPath:Ljava/lang/String;

    .line 56
    new-instance p2, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/miui/maml/elements/pag/PagElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 57
    new-instance p2, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-direct {p2, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/miui/maml/elements/pag/PagElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 61
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/pag/PagElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/pag/PagElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mProgressProperty:Lcom/miui/maml/data/IndexedVariable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/pag/PagElement;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/pag/PagElement;)Lorg/libpag/PAGFile;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagFile:Lorg/libpag/PAGFile;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/maml/elements/pag/PagElement;Lorg/libpag/PAGFile;)Lorg/libpag/PAGFile;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagFile:Lorg/libpag/PAGFile;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/maml/elements/pag/PagElement;)Lorg/libpag/PAGView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/maml/elements/pag/PagElement;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mAutoPlay:Z

    return p0
.end method

.method private getBitmap(ZLjava/lang/String;II)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p0

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    if-eqz p0, :cond_1

    .line 213
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/miui/maml/elements/BitmapProvider;->getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$loadPagFile$0(Lorg/libpag/PAGFile;)V
    .locals 0

    .line 325
    iget-boolean p1, p0, Lcom/miui/maml/elements/pag/PagElement;->mAutoPlay:Z

    if-eqz p1, :cond_0

    .line 326
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    invoke-virtual {p0}, Lorg/libpag/PAGView;->play()V

    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mProgressProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 245
    :cond_0
    new-instance v0, Lorg/libpag/PAGView;

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/libpag/PAGView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    .line 246
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/libpag/PAGView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/libpag/PAGView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "loop"

    .line 249
    invoke-virtual {p0, p1, v0, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mLoop:I

    const-string v0, "autoPlay"

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mAutoPlay:Z

    const-string v0, "setPath"

    .line 251
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mSetPath:Z

    const/4 v0, 0x2

    const-string v1, "scaleMode"

    .line 252
    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mScaleMode:I

    .line 255
    iget-object v1, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    invoke-virtual {v1, v0}, Lorg/libpag/PAGView;->setScaleMode(I)V

    .line 257
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "srcExp"

    .line 258
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    .line 259
    new-instance v2, Lcom/miui/maml/util/TextFormatter;

    const-string v3, "src"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1, v1}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    iput-object v2, p0, Lcom/miui/maml/elements/pag/PagElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 261
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    new-instance v0, Lcom/miui/maml/elements/pag/PagElement$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/pag/PagElement$1;-><init>(Lcom/miui/maml/elements/pag/PagElement;)V

    invoke-virtual {p1, v0}, Lorg/libpag/PAGView;->addListener(Lorg/libpag/PAGView$PAGViewListener;)V

    .line 296
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    iget p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mLoop:I

    invoke-virtual {p1, p0}, Lorg/libpag/PAGView;->setRepeatCount(I)V

    return-void
.end method

.method private loadPagFile()V
    .locals 5

    .line 312
    iget-boolean v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mSetPath:Z

    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->getResourceLoader()Lcom/miui/maml/ResourceLoader;

    move-result-object v0

    .line 315
    instance-of v1, v0, Lcom/miui/maml/util/AssetsResourceLoader;

    if-eqz v1, :cond_0

    .line 316
    check-cast v0, Lcom/miui/maml/util/AssetsResourceLoader;

    iget-object v1, p0, Lcom/miui/maml/elements/pag/PagElement;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/util/AssetsResourceLoader;->getAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/libpag/PAGFile;->Load(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/libpag/PAGFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libpag/PAGFile;->path()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v1, p0, Lcom/miui/maml/elements/pag/PagElement;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ResourceManager;->getExtraFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 321
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    new-instance v2, Lcom/miui/maml/elements/pag/PagElement$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/miui/maml/elements/pag/PagElement$$ExternalSyntheticLambda0;-><init>(Lcom/miui/maml/elements/pag/PagElement;)V

    invoke-virtual {v1, v0, v2}, Lorg/libpag/PAGView;->setPathAsync(Ljava/lang/String;Lorg/libpag/PAGFile$LoadListener;)V

    goto :goto_1

    .line 330
    :cond_2
    new-instance v0, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;-><init>(Lcom/miui/maml/elements/pag/PagElement;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 332
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSetPath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/maml/elements/pag/PagElement;->mSetPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PagElement"

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .locals 0

    .line 301
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTick(J)V

    .line 302
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 303
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/maml/elements/pag/PagElement;->mPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 307
    :cond_1
    iput-object p1, p0, Lcom/miui/maml/elements/pag/PagElement;->mPath:Ljava/lang/String;

    .line 308
    invoke-direct {p0}, Lcom/miui/maml/elements/pag/PagElement;->loadPagFile()V

    :cond_2
    :goto_1
    return-void
.end method

.method public finish()V
    .locals 1

    .line 228
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->finish()V

    .line 229
    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 233
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    return-object p0
.end method

.method public init()V
    .locals 0

    .line 66
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->init()V

    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewAdded(Landroid/view/View;)V

    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewRemoved(Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Lorg/libpag/PAGView;->stop()V

    .line 79
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    invoke-virtual {p0}, Lorg/libpag/PAGView;->freeCache()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "PagElement"

    const-string v1, "pause"

    .line 130
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/miui/maml/elements/pag/PagElement;->pausePagAnimation()V

    return-void
.end method

.method public pausePagAnimation()V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/libpag/PAGView;->pause()V

    :cond_0
    return-void
.end method

.method public playPagAnimation()V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/libpag/PAGView;->play()V

    :cond_0
    return-void
.end method

.method public releasePagAnimation()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lorg/libpag/PAGView;->stop()V

    .line 124
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    invoke-virtual {p0}, Lorg/libpag/PAGView;->freeCache()V

    :cond_0
    return-void
.end method

.method public replaceImage(Lcom/miui/maml/elements/pag/PagImageModel;)V
    .locals 10

    if-eqz p1, :cond_6

    .line 174
    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagFile:Lorg/libpag/PAGFile;

    if-nez v0, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    iget v1, p1, Lcom/miui/maml/elements/pag/PagImageModel;->index:I

    .line 178
    invoke-virtual {v0}, Lorg/libpag/PAGFile;->numImages()I

    move-result v0

    if-ltz v1, :cond_6

    if-lez v0, :cond_6

    if-ge v1, v0, :cond_6

    .line 180
    iget-object v0, p1, Lcom/miui/maml/elements/pag/PagImageModel;->src:Ljava/lang/String;

    .line 181
    iget-object v2, p1, Lcom/miui/maml/elements/pag/PagImageModel;->srcType:Ljava/lang/String;

    .line 182
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-static {v3, v2}, Lcom/miui/maml/elements/BitmapProvider;->create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/maml/elements/pag/PagElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 186
    invoke-virtual {v2, v0}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 189
    iget-wide v2, p1, Lcom/miui/maml/elements/pag/PagImageModel;->width:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v6, v2, v4

    const/4 v7, -0x1

    if-lez v6, :cond_2

    .line 190
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    move v2, v7

    .line 192
    :goto_0
    iget-wide v8, p1, Lcom/miui/maml/elements/pag/PagImageModel;->height:D

    cmpl-double p1, v8, v4

    if-lez p1, :cond_3

    .line 193
    invoke-virtual {p0, v8, v9}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    move-result p1

    float-to-int v7, p1

    :cond_3
    const/4 p1, 0x1

    .line 195
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/miui/maml/elements/pag/PagElement;->getBitmap(ZLjava/lang/String;II)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->set(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)V

    .line 197
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    if-lez v2, :cond_5

    if-lez v7, :cond_5

    const/4 v0, 0x0

    .line 201
    invoke-static {p1, v0, v0, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 204
    :cond_5
    invoke-static {p1}, Lorg/libpag/PAGImage;->FromBitmap(Landroid/graphics/Bitmap;)Lorg/libpag/PAGImage;

    move-result-object p1

    .line 205
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagFile:Lorg/libpag/PAGFile;

    invoke-virtual {p0, v1, p1}, Lorg/libpag/PAGFile;->replaceImage(ILorg/libpag/PAGImage;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public replaceText(Lcom/miui/maml/elements/pag/PagTextModel;)V
    .locals 5

    if-eqz p1, :cond_a

    .line 135
    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagFile:Lorg/libpag/PAGFile;

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget v1, p1, Lcom/miui/maml/elements/pag/PagTextModel;->index:I

    .line 139
    invoke-virtual {v0}, Lorg/libpag/PAGFile;->numTexts()I

    move-result v0

    if-ltz v1, :cond_a

    if-lez v0, :cond_a

    if-ge v1, v0, :cond_a

    .line 141
    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagFile:Lorg/libpag/PAGFile;

    invoke-virtual {v0, v1}, Lorg/libpag/PAGFile;->getTextData(I)Lorg/libpag/PAGText;

    move-result-object v0

    .line 142
    iget-object v2, p1, Lcom/miui/maml/elements/pag/PagTextModel;->newText:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 143
    iput-object v2, v0, Lorg/libpag/PAGText;->text:Ljava/lang/String;

    .line 145
    :cond_1
    iget v2, p1, Lcom/miui/maml/elements/pag/PagTextModel;->fontSize:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    .line 146
    iput v2, v0, Lorg/libpag/PAGText;->fontSize:F

    .line 148
    :cond_2
    iget-object v2, p1, Lcom/miui/maml/elements/pag/PagTextModel;->fontFamily:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 149
    iput-object v2, v0, Lorg/libpag/PAGText;->fontFamily:Ljava/lang/String;

    .line 151
    :cond_3
    iget-object v2, p1, Lcom/miui/maml/elements/pag/PagTextModel;->fillColorExp:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 152
    iget v2, p1, Lcom/miui/maml/elements/pag/PagTextModel;->fillColor:I

    iput v2, v0, Lorg/libpag/PAGText;->fillColor:I

    .line 154
    :cond_4
    iget-object v2, p1, Lcom/miui/maml/elements/pag/PagTextModel;->strokeColorExp:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 155
    iget v2, p1, Lcom/miui/maml/elements/pag/PagTextModel;->strokeColor:I

    iput v2, v0, Lorg/libpag/PAGText;->strokeColor:I

    .line 157
    :cond_5
    iget v2, p1, Lcom/miui/maml/elements/pag/PagTextModel;->strokeWidth:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    .line 158
    iput v2, v0, Lorg/libpag/PAGText;->strokeWidth:F

    .line 160
    :cond_6
    iget-object v2, p1, Lcom/miui/maml/elements/pag/PagTextModel;->backgroundColorExp:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 161
    iget v2, p1, Lcom/miui/maml/elements/pag/PagTextModel;->backgroundColor:I

    iput v2, v0, Lorg/libpag/PAGText;->backgroundColor:I

    .line 163
    :cond_7
    iget-object v2, p1, Lcom/miui/maml/elements/pag/PagTextModel;->fauxBold:Ljava/lang/String;

    const-string v3, "true"

    if-eqz v2, :cond_8

    .line 164
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lorg/libpag/PAGText;->fauxBold:Z

    .line 166
    :cond_8
    iget-object p1, p1, Lcom/miui/maml/elements/pag/PagTextModel;->fauxItalic:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 167
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lorg/libpag/PAGText;->fauxItalic:Z

    .line 169
    :cond_9
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagFile:Lorg/libpag/PAGFile;

    invoke-virtual {p0, v1, v0}, Lorg/libpag/PAGFile;->replaceText(ILorg/libpag/PAGText;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public reset(J)V
    .locals 0

    .line 220
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->reset(J)V

    .line 221
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider;->reset()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->resume()V

    .line 86
    iget-boolean v0, p0, Lcom/miui/maml/elements/pag/PagElement;->mAutoPlay:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/miui/maml/elements/pag/PagElement;->playPagAnimation()V

    :cond_0
    return-void
.end method

.method public resumePagAnimation()V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/libpag/PAGView;->play()V

    :cond_0
    return-void
.end method

.method public setLoopCount(I)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lorg/libpag/PAGView;->setRepeatCount(I)V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 110
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement;->mPagView:Lorg/libpag/PAGView;

    if-eqz p0, :cond_0

    float-to-double v0, p1

    .line 111
    invoke-virtual {p0, v0, v1}, Lorg/libpag/PAGView;->setProgress(D)V

    :cond_0
    return-void
.end method
