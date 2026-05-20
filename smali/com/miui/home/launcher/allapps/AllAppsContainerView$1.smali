.class Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;
.super Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;
.source "AllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/AllAppsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsContainerView;Landroid/os/Handler;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 2

    const-string v0, "hide_apps_switch"

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 204
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->createHideAppContainerView()V

    .line 206
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateApps(Ljava/util/List;)V

    goto :goto_1

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->access$000(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 209
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->access$000(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->getHideApps()Ljava/util/List;

    move-result-object p1

    .line 210
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    const/4 v1, 0x0

    .line 211
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/AppInfo;->setIsHideApp(Z)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateApps(Ljava/util/List;)V

    .line 214
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->access$000(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->reset()V

    :cond_2
    :goto_1
    return-void
.end method
