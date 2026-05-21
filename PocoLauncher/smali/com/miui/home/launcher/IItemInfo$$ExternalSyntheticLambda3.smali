.class public final synthetic Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/IItemInfo$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/IItemInfo;->$r8$lambda$VGk_Z2_SNrdIQ02kJmBiC-JEBao(Lcom/miui/home/launcher/ItemInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
