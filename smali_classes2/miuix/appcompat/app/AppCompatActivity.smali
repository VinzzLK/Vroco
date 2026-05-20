.class public Lmiuix/appcompat/app/AppCompatActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/IActivity;
.implements Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;
.implements Lmiuix/responsive/interfaces/IResponsive;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingSuperCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;,
        Lmiuix/appcompat/app/AppCompatActivity$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/FragmentActivity;",
        "Lmiuix/appcompat/app/IActivity;",
        "Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

.field private mInputViewLimitTextSizeDp:I

.field private mWindowInfo:Lmiuix/core/util/WindowBaseInfo;


# direct methods
.method public static synthetic $r8$lambda$lpNk9qvffiYXKegta9DuQd9DqoE(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 45
    new-instance v0, Lmiuix/appcompat/app/AppDelegate;

    new-instance v1, Lmiuix/appcompat/app/AppCompatActivity$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/AppCompatActivity$Callback;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/AppCompatActivity$1;)V

    new-instance v3, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;

    invoke-direct {v3, p0, v2}, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/AppCompatActivity$1;)V

    invoke-direct {v0, p0, v1, v3}, Lmiuix/appcompat/app/AppDelegate;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/ActivityCallback;Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;)V

    iput-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    return-void
.end method

.method static synthetic access$1001(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/res/Configuration;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$1101(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1201(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$201(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$301(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    return-void
.end method

.method static synthetic access$401(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method static synthetic access$501(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/MenuItem;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$601(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/Menu;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$701(Lmiuix/appcompat/app/AppCompatActivity;I)Landroid/view/View;
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$801(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/Menu;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$901(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$id;->search_mode_stub:I

    .line 64
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mInputViewLimitTextSizeDp:I

    .line 63
    invoke-static {v0, v1, p0}, Lmiuix/appcompat/internal/util/LayoutUIUtils;->resetSearchModeStubInputTextSize(Landroid/content/res/Resources;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 224
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 220
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bindViewWithContentInset(Landroid/view/View;)V
    .locals 0

    .line 629
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->bindViewWithContentInset(Landroid/view/View;)V

    return-void
.end method

.method public checkThemeLegality()V
    .locals 0

    return-void
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .locals 0

    .line 254
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppDelegate;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    return-void
.end method

.method public executeCloseEnterAnimation()V
    .locals 0

    .line 518
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->executeCloseEnterAnimation()V

    return-void
.end method

.method public executeOpenEnterAnimation()V
    .locals 0

    .line 502
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->executeOpenEnterAnimation()V

    return-void
.end method

.method public executeOpenExitAnimation()V
    .locals 0

    .line 510
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->executeOpenExitAnimation()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 276
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->shouldDelegateActivityFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    :cond_0
    return-void
.end method

.method public getActivityIdentity()Ljava/lang/String;
    .locals 0

    .line 600
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getActivityIdentity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .locals 0

    .line 634
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getContentInset()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getFloatingBrightPanel()Landroid/view/View;
    .locals 0

    .line 388
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getFloatingBrightPanel()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    .line 151
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getResponsiveSubject()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getResponsiveSubject()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getWindowInfo()Lmiuix/core/util/WindowBaseInfo;
    .locals 0

    .line 235
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    return-object p0
.end method

.method public hideFloatingBrightPanel()V
    .locals 0

    .line 431
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->hideFloatingBrightPanel()V

    return-void
.end method

.method public hideFloatingDimBackground()V
    .locals 0

    .line 427
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->hideFloatingDimBackground()V

    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    .line 111
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public isFinishing()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->isDelegateFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isFloatingWindowTheme()Z
    .locals 0

    .line 374
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->isFloatingTheme()Z

    move-result p0

    return p0
.end method

.method public isInFloatingWindowMode()Z
    .locals 0

    .line 384
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->isInFloatingWindowMode()Z

    move-result p0

    return p0
.end method

.method protected isResponsiveEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    invoke-virtual {v0}, Lmiuix/core/util/WindowBaseInfo;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->markWindowInfoDirty(Lmiuix/core/util/WindowBaseInfo;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .locals 1

    .line 639
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 640
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markWindowInfoDirty(Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isResponsiveEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AppDelegate;->setResponsiveEnabled(Z)V

    .line 56
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppDelegate;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 57
    invoke-static {p0, p1, v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AppCompatActivity;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    .line 59
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isTallFontLang(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x1b

    .line 60
    :goto_0
    iput p1, p0, Lmiuix/appcompat/app/AppCompatActivity;->mInputViewLimitTextSizeDp:I

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lmiuix/appcompat/app/AppCompatActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AppCompatActivity$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    .line 339
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    .line 121
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onDestroy()V
    .locals 1

    .line 181
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onDestroy()V

    .line 182
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->removeInfoOfContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    .line 184
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onDispatchNestedScrollOffset([I)V
    .locals 0

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 0

    .line 577
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onExtraPaddingChanged(I)V

    return-void
.end method

.method public onFloatingWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFloatingWindowModeChanging(Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyDown(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 192
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyLongPress(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 200
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyMultiple(Landroidx/fragment/app/FragmentManager;IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 216
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyUp(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 208
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 126
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onOptionsMenuViewAdded(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->onPostResume()V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 344
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V
    .locals 0

    .line 645
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 171
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 166
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 176
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->onStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 106
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 354
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 146
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public realFinish()V
    .locals 0

    .line 317
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public registerCoordinateScrollView(Landroid/view/View;)V
    .locals 0

    .line 609
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->registerCoordinateScrollView(Landroid/view/View;)V

    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .locals 0

    .line 751
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setBottomMenuCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 80
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnableSwipToDismiss(Z)V
    .locals 0

    .line 419
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setEnableSwipToDismiss(Z)V

    return-void
.end method

.method public setExtraHorizontalPadding(I)Z
    .locals 0

    .line 567
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setExtraHorizontalPadding(I)Z

    move-result p0

    return p0
.end method

.method public setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V
    .locals 0

    .line 423
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V

    return-void
.end method

.method public showFloatingBrightPanel()V
    .locals 0

    .line 435
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->showFloatingBrightPanel()V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 349
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public unregisterCoordinateScrollView(Landroid/view/View;)V
    .locals 0

    .line 613
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->unregisterCoordinateScrollView(Landroid/view/View;)V

    return-void
.end method
