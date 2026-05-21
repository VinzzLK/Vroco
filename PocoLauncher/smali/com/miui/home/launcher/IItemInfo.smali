.class public interface abstract Lcom/miui/home/launcher/IItemInfo;
.super Ljava/lang/Object;
.source "IItemInfo.java"


# direct methods
.method public static synthetic $r8$lambda$3oaHJfdCwzE2MoHBg_ZKD8VuUtU(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/IItemInfo;->lambda$getViewSpanY$3(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7p9KUCdHrR9HKuamT6ebsjN2fBQ(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/IItemInfo;->lambda$getViewCellX$0(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MG8DJ3K-_-vG7vHBcKriI8zHlX4(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/IItemInfo;->lambda$getViewCellY$1(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VGk_Z2_SNrdIQ02kJmBiC-JEBao(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/IItemInfo;->lambda$getScreenId$4(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oE7Sre34OKYk1sDgg9EbrUCpLxE(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/IItemInfo;->lambda$getViewSpanX$2(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getScreenId$4(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Long;
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getViewCellX$0(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Integer;
    .locals 0

    .line 12
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getViewCellY$1(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Integer;
    .locals 0

    .line 16
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getViewSpanX$2(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Integer;
    .locals 0

    .line 20
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getViewSpanY$3(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Integer;
    .locals 0

    .line 24
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenId()J
    .locals 2

    .line 28
    invoke-interface {p0}, Lcom/miui/home/launcher/IItemInfo;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda3;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getViewCellX()I
    .locals 1

    .line 12
    invoke-interface {p0}, Lcom/miui/home/launcher/IItemInfo;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getViewCellY()I
    .locals 1

    .line 16
    invoke-interface {p0}, Lcom/miui/home/launcher/IItemInfo;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getViewSpanX()I
    .locals 1

    .line 20
    invoke-interface {p0}, Lcom/miui/home/launcher/IItemInfo;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda4;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getViewSpanY()I
    .locals 1

    .line 24
    invoke-interface {p0}, Lcom/miui/home/launcher/IItemInfo;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isInHotseat()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
