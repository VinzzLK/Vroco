.class Lcom/miui/home/safemode/SafeSettingsUtils;
.super Ljava/lang/Object;
.source "SafeSettingsUtils.java"


# direct methods
.method public static getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 6

    .line 16
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    const-string p0, "com.miui.launcher.utils.MiuiSettingsUtils"

    const-string p1, "getGlobalBoolean"

    invoke-static {p0, v0, p1, v2, v1}, Lcom/miui/home/safemode/ReflectUtils;->callStaticMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 6

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object v0, v2, v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "com.miui.launcher.utils.MiuiSettingsUtils"

    const-string p1, "putBooleanToGlobal"

    .line 8
    invoke-static {p0, v0, p1, v2, v1}, Lcom/miui/home/safemode/ReflectUtils;->callStaticMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
