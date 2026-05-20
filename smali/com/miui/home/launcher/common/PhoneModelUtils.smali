.class public Lcom/miui/home/launcher/common/PhoneModelUtils;
.super Ljava/lang/Object;
.source "PhoneModelUtils.java"


# static fields
.field private static final BRAND_NAME:Ljava/lang/String;

.field private static final MARKET_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.marketname"

    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/PhoneModelUtils;->MARKET_NAME:Ljava/lang/String;

    const-string v0, "ro.product.brand"

    .line 11
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/PhoneModelUtils;->BRAND_NAME:Ljava/lang/String;

    return-void
.end method

.method private static getBrandName()Ljava/lang/String;
    .locals 2

    .line 21
    sget-object v0, Lcom/miui/home/launcher/common/PhoneModelUtils;->BRAND_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 24
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static getMarketName()Ljava/lang/String;
    .locals 2

    .line 14
    sget-object v0, Lcom/miui/home/launcher/common/PhoneModelUtils;->MARKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 17
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static isRedmiKSeries()Z
    .locals 2

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->getMarketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)^Redmi[\\s]*K[0-9]+.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRedmiSeries()Z
    .locals 2

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->getBrandName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)^Redmi.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRedmiXSeries()Z
    .locals 2

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->getMarketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)^Redmi[\\s]*[0-9]+X.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isXiaomiDigitSeries()Z
    .locals 2

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->getMarketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)^(Xiaomi|Mi)\\s*[0-9]+\\s*(Pro.*|Explorer.*|SE.*|Ultra.*)*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isXiaomiMIXSeries()Z
    .locals 2

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->getMarketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i).*(\\bMIX\\b).*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isXiaomiSeries()Z
    .locals 2

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->getBrandName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)^(Xiaomi|Mi).*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
