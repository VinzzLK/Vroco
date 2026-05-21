.class public final synthetic Lcom/miui/home/launcher/commercial/CommercialCommons$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/CommercialCommons$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/CommercialCommons$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/CommercialCommons$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/CommercialCommons$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/launcher/commercial/CommercialCommons$$ExternalSyntheticLambda5;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->$r8$lambda$dB_b9UK-MD2Jw_3W2MNpkQIY_No(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result p0

    return p0
.end method
