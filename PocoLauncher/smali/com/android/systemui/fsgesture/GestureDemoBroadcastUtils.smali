.class public Lcom/android/systemui/fsgesture/GestureDemoBroadcastUtils;
.super Ljava/lang/Object;
.source "GestureDemoBroadcastUtils.java"


# direct methods
.method public static sendBroadcast(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "typefrom_demo"

    .line 18
    invoke-static {p0, p1, v0}, Lcom/android/systemui/fsgesture/GestureDemoBroadcastUtils;->sendBroadcast(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method private static sendBroadcast(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    .line 22
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui.fsgesture"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "typeFrom"

    .line 24
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isEnter"

    .line 25
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "miui.permission.USE_INTERNAL_GENERAL_API"

    .line 26
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
