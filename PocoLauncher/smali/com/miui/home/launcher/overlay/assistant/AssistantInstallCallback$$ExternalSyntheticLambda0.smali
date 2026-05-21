.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->$r8$lambda$FEYFuonUIFk90au889GRlRcAYgc(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
