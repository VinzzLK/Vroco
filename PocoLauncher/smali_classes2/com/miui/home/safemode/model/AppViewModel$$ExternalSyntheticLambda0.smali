.class public final synthetic Lcom/miui/home/safemode/model/AppViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/safemode/model/AppViewModel$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/safemode/model/AppViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/miui/home/safemode/model/AppViewModel$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/miui/home/safemode/model/AppViewModel$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/safemode/model/AppViewModel$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/home/safemode/model/SafeAppInfo;

    check-cast p2, Lcom/miui/home/safemode/model/SafeAppInfo;

    invoke-static {p1, p2}, Lcom/miui/home/safemode/model/AppViewModel;->$r8$lambda$VaMY8HX97OTAmxsITrSCm0NFEmI(Lcom/miui/home/safemode/model/SafeAppInfo;Lcom/miui/home/safemode/model/SafeAppInfo;)I

    move-result p0

    return p0
.end method
