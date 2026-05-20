.class public Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;
.super Ljava/lang/Object;
.source "MaMlWidgetUtilities.java"


# static fields
.field private static CLOCK_MAMLS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$is2tDudbBrVsusEuXWpgtE4b8e8(Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;Lcom/miui/home/launcher/WidgetPermissionAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->lambda$tryUpdateMaMlWidgetVisibility$0(Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;Lcom/miui/home/launcher/WidgetPermissionAction;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 35
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "bc128052-1c50-4da8-b920-0728aa957a98"

    const-string v2, "060fd4b1-8f58-4af2-a735-75c33090066a"

    const-string v3, "b9884f60-2597-4e66-b94e-cffe97be3b69"

    const-string v4, "d7b7cf12-29ab-4cd6-afe5-f006d5112d48"

    const-string v5, "7165281e-a932-42ac-a068-f35238a4e6f0"

    const-string v6, "52b8238d-848f-4608-a0e6-28458d4b1f2c"

    const-string v7, "2353f0c3-6c7c-4404-8a5d-27d4a679c55c"

    const-string v8, "7c194239-ef61-4760-848e-8997409a049b"

    const-string v9, "48bcd7fb-c679-456c-a78e-dde4433defdd"

    const-string v10, "eb043630-44cd-4012-87d8-bd35f08d31eb"

    const-string v11, "2353f0c3-6c7c-4404-8a5d-27d4a679c55c"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->CLOCK_MAMLS:Ljava/util/HashSet;

    return-void
.end method

.method public static isClock(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 57
    sget-object v0, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->CLOCK_MAMLS:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getWidgetCategory()Ljava/lang/String;

    move-result-object p0

    const-string v0, "clock"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMaMlClassicClock(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 53
    sget-object v0, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->CLOCK_MAMLS:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$tryUpdateMaMlWidgetVisibility$0(Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;Lcom/miui/home/launcher/WidgetPermissionAction;)V
    .locals 13

    .line 72
    const-class v0, Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "miui.security.SecurityManager"

    .line 75
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v3, "security"

    .line 76
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "updateAppWidgetVisibility"

    const-class v8, Ljava/lang/Void;

    const/4 v1, 0x5

    new-array v9, v1, [Ljava/lang/Class;

    aput-object v0, v9, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v3, v9, v10

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v3, v9, v11

    const-class v3, Ljava/util/List;

    const/4 v12, 0x3

    aput-object v3, v9, v12

    const/4 v3, 0x4

    aput-object v0, v9, v3

    new-array v0, v1, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    iget-boolean v1, p1, Lcom/miui/home/launcher/WidgetPermissionAction;->visible:Z

    .line 81
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-virtual {p0}, Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;->getPermissions()Ljava/util/List;

    move-result-object p0

    aput-object p0, v0, v12

    iget-object p0, p1, Lcom/miui/home/launcher/WidgetPermissionAction;->name:Ljava/lang/String;

    aput-object p0, v0, v3

    move-object v10, v0

    .line 74
    invoke-static/range {v5 .. v10}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MaMlWidgetUtilities"

    const-string/jumbo v0, "tryUpdateMaMlWidgetVisibility error!"

    .line 84
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static tryUpdateMaMlWidgetVisibility(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/WidgetPermissionAction;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 63
    instance-of v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    check-cast p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->permissionInfo:Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;

    if-eqz p0, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;->getActions()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/WidgetPermissionAction;->bindAction:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;Lcom/miui/home/launcher/WidgetPermissionAction;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 88
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tryUpdateMaMlWidgetVisibility: unsupported action "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MaMlWidgetUtilities"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
