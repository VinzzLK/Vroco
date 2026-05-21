.class public Lcom/miui/miuiwidget/servicedelivery/utils/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canBeResolved(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-static {p0, p1, v0}, Lcom/miui/miuiwidget/servicedelivery/utils/IntentUtils;->canBeResolved(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result p0

    return p0
.end method

.method public static canBeResolved(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    check-cast p0, Landroid/app/ApplicationPackageManager;

    if-eqz p2, :cond_1

    const/16 p2, 0x3e7

    .line 28
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ApplicationPackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception p0

    const-string p1, "IntentUtils"

    const-string p2, "canIntentBeResolved"

    .line 34
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
