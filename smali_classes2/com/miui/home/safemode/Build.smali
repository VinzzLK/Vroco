.class public Lcom/miui/home/safemode/Build;
.super Ljava/lang/Object;
.source "Build.java"


# static fields
.field public static final IS_CU_CUSTOMIZATION_TEST:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_TABLET:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/safemode/Build;->IS_TABLET:Z

    const-string v0, "ro.cust.test"

    const-string v1, ""

    .line 11
    invoke-static {v0, v1}, Lcom/miui/home/safemode/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "cu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/safemode/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    const-string v0, "ro.product.mod_device"

    .line 12
    invoke-static {v0, v1}, Lcom/miui/home/safemode/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/safemode/Build;->IS_INTERNATIONAL_BUILD:Z

    return-void
.end method
