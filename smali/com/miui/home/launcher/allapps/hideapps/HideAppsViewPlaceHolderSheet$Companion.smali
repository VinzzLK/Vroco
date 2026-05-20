.class public final Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;
.super Ljava/lang/Object;
.source "HideAppsViewPlaceHolderSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isShow()Z
    .locals 1

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/16 v0, 0x800

    invoke-static {p0, v0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/miui/home/launcher/BaseDraggingActivity;I)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeHideAppsViewSheet()V
    .locals 2

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x800

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/AbstractFloatingView;->closeOpenViews(Lcom/miui/home/launcher/BaseDraggingActivity;ZI)V

    return-void
.end method

.method public final showHideAppsViewPlaceHolder(I)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->showHideAppsViewPlaceHolder(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final showHideAppsViewPlaceHolder(ILandroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->removeHideAppsViewSheet()V

    .line 62
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    .line 63
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d007e

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.home.launcher.allapps.hideapps.HideAppsViewPlaceHolderSheet"

    .line 63
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;

    .line 69
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->handleOpen()V

    .line 70
    sget v1, Lcom/miui/home/R$id;->hide_apps_view_place_holder:I

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    invoke-virtual {v1, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->showView(ILandroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
