.class Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$1;
.super Ljava/lang/Object;
.source "LauncherServiceDeliveryWidgetDelegate.java"

# interfaces
.implements Lcom/miui/miuiwidget/track/MiuiWidgetTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field final synthetic this$0:Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$1;->this$0:Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$1;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-static {p2, p3}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackAd(Landroid/content/Context;Lcom/miui/miuiwidget/track/AdvertParams;)V
    .locals 3

    const-string v0, "content://com.miui.personalassistant.servicedeliver.advert.track.provider"

    .line 81
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v2, "advertParams"

    .line 84
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$1;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "trackAd"

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MiuiWidgetTracker"

    const-string/jumbo p2, "trackAd error"

    .line 87
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
