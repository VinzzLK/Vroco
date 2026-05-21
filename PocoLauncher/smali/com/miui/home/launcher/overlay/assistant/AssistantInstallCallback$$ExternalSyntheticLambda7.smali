.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda7;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda7;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda7;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->$r8$lambda$B66iIRqjf6dpAqOk1GMipsQIggY(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
