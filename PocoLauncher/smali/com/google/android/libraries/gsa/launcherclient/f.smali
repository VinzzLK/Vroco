.class final Lcom/google/android/libraries/gsa/launcherclient/f;
.super Landroid/content/BroadcastReceiver;
.source "LauncherClient.java"


# instance fields
.field final synthetic a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 5
    invoke-static {p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/libraries/gsa/launcherclient/l;->a()V

    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 6
    invoke-static {p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/libraries/gsa/launcherclient/l;->a()V

    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 7
    invoke-static {p2, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 8
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    :cond_0
    return-void
.end method
