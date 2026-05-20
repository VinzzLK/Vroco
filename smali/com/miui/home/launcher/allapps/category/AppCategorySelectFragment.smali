.class public Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;
.super Landroidx/fragment/app/Fragment;
.source "AppCategorySelectFragment.java"

# interfaces
.implements Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

.field private mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

.field private mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

.field private mBack:Landroid/widget/ImageView;

.field private mBackgroundAlpha:I

.field private mCategoryId:I

.field private mCategoryName:Ljava/lang/String;

.field private mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mLastDarkMode:Z

.field private mListener:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;

.field private mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSave:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleClear:Landroid/widget/ImageView;

.field private mTitleEditor:Landroid/widget/EditText;

.field stateManagerListener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;


# direct methods
.method public static synthetic $r8$lambda$T9aHvYKVfu_1cOrXpkUgrtxcv8o(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ayaTHN0M3I2qSSdXRJJ85EEbIyQ(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kENrjwWXsdxTcxyeAm7R37rMBt0(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->lambda$createNewDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oFTi8_9xX1DjfqESoT14c87B78w(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->lambda$createNewDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oWTf3LA1ALtL-FggnJLwXT_k1xw(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$riW71-axKZshBQkUHcMSzJQ7eQs(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->lambda$initTitleEditorActionListener$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllCategoryList()Lcom/miui/home/launcher/AllCategoryList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    const/high16 v0, -0x80000000

    .line 71
    iput v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    .line 164
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$1;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->stateManagerListener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->hideDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleClear:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/EditText;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method private createNewDialog()V
    .locals 4

    .line 452
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    .line 453
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mLastDarkMode:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->hideDialog()V

    .line 457
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1000cf

    .line 458
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1000d1

    new-instance v3, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    .line 459
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1000d0

    new-instance v3, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    .line 460
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 461
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 462
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mLastDarkMode:Z

    return-void
.end method

.method private getStateManager()Lcom/miui/home/launcher/LauncherStateManager;
    .locals 1

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private hideDialog()V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private hideKeyboard()V
    .locals 1

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/util/MainThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private initTitleEditorActionListener()V
    .locals 1

    .line 276
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    sget-object v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$$ExternalSyntheticLambda5;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private synthetic lambda$createNewDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 459
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->save()V

    return-void
.end method

.method private synthetic lambda$createNewDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 460
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->back()V

    return-void
.end method

.method private static synthetic lambda$initTitleEditorActionListener$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "actionId :+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppCategorySelectFragme"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 279
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "event :+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitle:Landroid/widget/TextView;

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 202
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->back()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->save()V

    return-void
.end method

.method private showDialog()V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private updatePoolSize()V
    .locals 2

    .line 431
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    return-void

    .line 434
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    .line 435
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result v1

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v0, 0x2

    .line 436
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v0, 0x3

    .line 437
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method private updateUIColorMode()V
    .locals 4

    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleClear:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getTextClearIconResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppSelectInputTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppSelectInputHintColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 291
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getTitleTextBackgroundResource(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getTitleEditTextBackgroundResource(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppSelectInputTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getRecycleViewCardBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBack:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getBackBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mSave:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSaveBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCustomTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppCustomTextViewColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 298
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2, p0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppSelectInputHintColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setHintTextColor(I)V

    return-void
.end method


# virtual methods
.method public back()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mListener:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;->onBack()V

    .line 303
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->hideKeyboard()V

    return-void
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 361
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->setApps(Ljava/util/List;)V

    return-void
.end method

.method public checkList(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->setAnimEnable(Z)V

    .line 384
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->checkList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getCategoryId()I
    .locals 0

    .line 400
    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    return p0
.end method

.method public getSelectedApps()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getSelectedApps()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method onBackPressed()Z
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getAddApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getRemoveApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->back()V

    goto :goto_1

    .line 442
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->createNewDialog()V

    .line 443
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->showDialog()V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 123
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 127
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    goto :goto_0

    .line 129
    :cond_1
    new-instance p1, Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 130
    new-instance p1, Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-direct {p1, v0, v1, p0, v2}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/model/LauncherAppsProvider;Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 134
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    const/16 v0, 0x20

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz p1, :cond_3

    .line 135
    sget-object p1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    :goto_2
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_4

    .line 137
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 139
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->stateManagerListener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    .line 143
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p1

    goto :goto_3

    :cond_6
    const/16 p1, 0xff

    :goto_3
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    .line 144
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mLastDarkMode:Z

    .line 146
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/AllCategoryList;->getCategoryName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    .line 148
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {p1, v0, v2, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/AllAppsStore;Z)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    .line 149
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->setAdapter(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)V

    .line 151
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    invoke-static {v0}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofCategory(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    .line 153
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 154
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d0061

    const/4 p3, 0x0

    .line 161
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 333
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 334
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->stopLocked()V

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->onDestroy()V

    .line 339
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 344
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->stateManagerListener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->removeStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    :cond_2
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/ScreenOrientationChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 411
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->refreshSpanCount()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/ScreenSizeChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 416
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->refreshSpanCount()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    .line 367
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 369
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 370
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    if-eqz v0, :cond_1

    .line 372
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->setColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    .line 374
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->updateUIColorMode()V

    :cond_2
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/DrawerCellsColumnsChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->refreshSpanCount()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 405
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->updatePoolSize()V

    .line 406
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->refreshSpanCount()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 179
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lmiuix/core/util/MiuixUIUtils;->getRealNavigationBarHeight(Landroid/content/Context;)I

    move-result p2

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f0a0085

    .line 182
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 183
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 184
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 185
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 186
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;Lcom/miui/home/launcher/allapps/ItemPaddingSetter;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 187
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 188
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, p2}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    const p2, 0x7f0a0374

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 190
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p2, v1, v0, v3, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    const p2, 0x7f0a0166

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    const p2, 0x7f0a03ba

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitle:Landroid/widget/TextView;

    const p2, 0x7f0a00c8

    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleClear:Landroid/widget/ImageView;

    .line 195
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a00c7

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBack:Landroid/widget/ImageView;

    const p2, 0x7f0a00ca

    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mSave:Landroid/widget/ImageView;

    const p2, 0x7f0a011b

    .line 207
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCustomTextView:Landroid/widget/TextView;

    .line 208
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBack:Landroid/widget/ImageView;

    new-instance p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mSave:Landroid/widget/ImageView;

    new-instance p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 211
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 213
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    new-instance p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$2;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    new-instance p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 244
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitle:Landroid/widget/TextView;

    new-instance p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$4;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$4;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 252
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleClear:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitle:Landroid/widget/TextView;

    new-instance p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$5;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$5;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->updateUIColorMode()V

    .line 270
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->updatePoolSize()V

    .line 272
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->initTitleEditorActionListener()V

    return-void
.end method

.method public refreshSpanCount()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->refreshSpanCount()V

    .line 427
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->onAppsUpdated(ILjava/util/List;)V

    return-void
.end method

.method public save()V
    .locals 7

    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 308
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f1000cc

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getSelectedApps()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mListener:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;

    iget v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps(I)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;->onDelete(ILjava/util/Collection;)V

    return-void

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 317
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllCategoryList()Lcom/miui/home/launcher/AllCategoryList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/AllCategoryList;->isCategoryExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1000cb

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 321
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mListener:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;

    iget v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getAddApps()Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getRemoveApps()Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;->onSave(ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 322
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->hideKeyboard()V

    return-void
.end method

.method public setAppCategorySelectListener(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mListener:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;

    return-void
.end method

.method public updateCategory(I)V
    .locals 4

    .line 90
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->setAnimEnable(Z)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    if-eqz v0, :cond_1

    .line 95
    invoke-static {p1}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofCategory(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/AllCategoryList;->getCategoryName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 101
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 102
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getTitleTextBackgroundResource(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleClear:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 110
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleClear:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_5

    .line 113
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_5
    return-void
.end method
