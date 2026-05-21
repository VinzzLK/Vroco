.class Lcom/miui/home/launcher/Launcher$35;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public static synthetic $r8$lambda$8QPI7capKqmvyway1hUBOHLjVq0(Lcom/miui/home/launcher/Launcher$35;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$35;->lambda$onChange$1(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gnla0EBmV6wGRY-HhsqGkGWxBZs(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher$35;->lambda$onChange$0(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 4854
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$35;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private static synthetic lambda$onChange$0(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 4862
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    return-void
.end method

.method private synthetic lambda$onChange$1(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 4863
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$35;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 4857
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$35;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4860
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$35;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$3900(Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;

    move-result-object p1

    .line 4861
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$35;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "light_speed_app"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$3902(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;

    .line 4862
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$35;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$4000(Lcom/miui/home/launcher/Launcher;)Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/Launcher$35$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/Launcher$35$$ExternalSyntheticLambda1;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/Launcher;->access$4100(Lcom/miui/home/launcher/Launcher;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 4863
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$35;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApps()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/Launcher$35$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$35$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher$35;)V

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/Launcher;->access$4100(Lcom/miui/home/launcher/Launcher;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method
