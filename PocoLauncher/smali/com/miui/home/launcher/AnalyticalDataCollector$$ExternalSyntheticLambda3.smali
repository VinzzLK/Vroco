.class public final synthetic Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda3;

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

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->$r8$lambda$CtwMDz2f-vD_0kzRQSOjQBeil5E(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
