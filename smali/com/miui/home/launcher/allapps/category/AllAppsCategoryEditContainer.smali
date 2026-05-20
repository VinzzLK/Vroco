.class public Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;
.super Landroid/widget/FrameLayout;
.source "AllAppsCategoryEditContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;


# instance fields
.field private dialog:Lmiuix/appcompat/app/AlertDialog;

.field private mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public static synthetic $r8$lambda$gzoz1CBzyEuc-Q5YMb-NO7gq3z0(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->lambda$onFinishInflate$0(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tO0EHxce3GZiGFGI0DMYFw0dijY(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;ILjava/util/Collection;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->lambda$onDelete$1(ILjava/util/Collection;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private hideDialog()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->dialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDelete$1(ILjava/util/Collection;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p3

    new-instance p4, Lcom/miui/home/launcher/model/CategoryRemoveTask;

    invoke-direct {p4, p1, p2}, Lcom/miui/home/launcher/model/CategoryRemoveTask;-><init>(ILjava/util/Collection;)V

    invoke-virtual {p3, p4}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->onBack()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentCategoryId()I
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getCategoryId()I

    move-result p0

    return p0
.end method

.method public onBack()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchToList()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->hideDialog()V

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onDelete(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000b3

    .line 59
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000b2

    .line 60
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;ILjava/util/Collection;)V

    const p1, 0x7f100162

    .line 61
    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 67
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 36
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    .line 38
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->setAppCategorySelectListener(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;)V

    .line 39
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onSave(ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;

    invoke-direct {v0, p1, p3}, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 75
    :cond_0
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 76
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p2

    new-instance p3, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;

    invoke-direct {p3, p1, p4, p5}, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;-><init>(ILjava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->onBack()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 104
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->hideDialog()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public updateCategory(I)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->updateCategory(I)V

    return-void
.end method
