.class Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay$1;
.super Ljava/lang/Object;
.source "SearchLauncherOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay$1;->this$0:Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay$1;->this$0:Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->access$000(Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;)Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay$1;->this$0:Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;

    invoke-static {p0}, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->access$100(Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;)Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->disconnectOnly()V

    :cond_0
    return-void
.end method
