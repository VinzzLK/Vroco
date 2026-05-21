.class public Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutConfigForSpecial;
.super Ljava/lang/Object;
.source "TaskVerticalLayoutConfigForSpecial.java"

# interfaces
.implements Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomRatio()F
    .locals 0

    const p0, 0x3ecccccd    # 0.4f

    return p0
.end method

.method public getTopRatio(ZI)F
    .locals 1

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "real getTopRatio multiWindowMode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",isSpecialDevice:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "TaskStackViewsAlgorithmVertical"

    .line 15
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const p0, 0x3f19999a    # 0.6f

    return p0

    :cond_0
    const p0, 0x3ee978d5    # 0.456f

    return p0
.end method

.method public getVerticalGapFraction()F
    .locals 0

    const p0, 0x3f333333    # 0.7f

    return p0
.end method
