.class public Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;
.super Landroidx/fragment/app/Fragment;
.source "CategorySettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;
.implements Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

.field private mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private mCategoryContainer:Landroid/view/View;

.field private mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

.field private mCategorySwitch:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mCategorySwitchContainer:Landroid/widget/LinearLayout;

.field private mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$-oSSNn00O2zP1YTioQ_PhV9VbZE(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->lambda$removeCategory$2(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8cDLyRyz4QWj7KVA7lfMUMWleA4(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->lambda$onClick$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$By3fYENin1IvbiQdNWEhj2pBFGY(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    return-object p0
.end method

.method private synthetic lambda$onClick$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 140
    invoke-static {}, Lcom/miui/home/launcher/LauncherCategory;->reset()V

    .line 141
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 145
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    .line 146
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    .line 147
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$removeCategory$2(ILandroid/content/DialogInterface;I)V
    .locals 1

    .line 197
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->setAnimEnable(Z)V

    .line 198
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p2

    new-instance p3, Lcom/miui/home/launcher/model/CategoryRemoveTask;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps(I)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p3, p1, v0}, Lcom/miui/home/launcher/model/CategoryRemoveTask;-><init>(ILjava/util/Collection;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;-><init>(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method


# virtual methods
.method public addCategory()V
    .locals 1

    const/4 v0, 0x1

    .line 168
    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->startActivityForResult(Landroidx/fragment/app/Fragment;I)V

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

    .line 208
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->setApps(Ljava/util/List;)V

    return-void
.end method

.method public editCategory(I)V
    .locals 1

    const/4 v0, 0x2

    .line 173
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->startActivityForResult(Landroidx/fragment/app/Fragment;II)V

    .line 174
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->updateCategoryList()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 179
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 182
    :cond_0
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->setAnimEnable(Z)V

    .line 183
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p3

    new-instance v0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;-><init>(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;)V

    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    if-ne p1, p2, :cond_1

    .line 185
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategoryContainer:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 136
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100446

    .line 137
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100445

    .line 138
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;)V

    const p0, 0x104000a

    .line 139
    invoke-virtual {p1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1002ca

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    goto :goto_0

    .line 67
    :cond_2
    new-instance p1, Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 68
    new-instance p1, Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-direct {p1, v0, v1, p0, v2}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/model/LauncherAppsProvider;Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 71
    :goto_0
    new-instance p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;-><init>(Lcom/miui/home/launcher/allapps/AllAppsStore;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    .line 72
    new-instance p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    invoke-direct {p1, v0, v1, p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->setAdapter(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)V

    .line 74
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->updateCategoryList()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d0060

    const/4 p3, 0x0

    .line 80
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 158
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->stopLocked()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    .line 163
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 219
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onStop()V
    .locals 2

    .line 123
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAppCategoryEnable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 125
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setAppCategoryEnable(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a007b

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitchContainer:Landroid/widget/LinearLayout;

    .line 88
    new-instance v0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a007a

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAppCategoryEnable()Z

    move-result v0

    invoke-virtual {p2, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 93
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f0a00de

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategoryContainer:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0a0084

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 99
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p2

    .line 100
    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object p2

    const v0, 0x7f0a0304

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 103
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 104
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 105
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 106
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 107
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 108
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_1

    .line 113
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 116
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 118
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitchContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f1000d2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->mCategorySwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setSwitchItemViewAccessibility(Landroid/view/View;Ljava/lang/String;Lmiuix/slidingwidget/widget/SlidingButton;)V

    return-void
.end method

.method public removeCategory(I)V
    .locals 2

    .line 193
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100164

    .line 194
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100163

    .line 195
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;I)V

    const p0, 0x7f100162

    .line 196
    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 202
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method
