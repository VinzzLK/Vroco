.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda9;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda9;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda9;

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

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->$r8$lambda$uT1NRNG2TSEK4il2I_3SF4f6GBc(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
