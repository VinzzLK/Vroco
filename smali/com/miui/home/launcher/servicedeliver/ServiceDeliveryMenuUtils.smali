.class public Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryMenuUtils;
.super Ljava/lang/Object;
.source "ServiceDeliveryMenuUtils.java"


# static fields
.field public static isSupportServiceDelivery:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static isServiceDeliveryDowngrade(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 29
    instance-of p1, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz p1, :cond_0

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ServiceDeliveryInfo downgrade skip menu \uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceDeliveryMenuUtils"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-boolean p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryMenuUtils;->isSupportServiceDelivery:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
