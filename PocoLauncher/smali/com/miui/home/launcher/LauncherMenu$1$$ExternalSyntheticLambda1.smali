.class public final synthetic Lcom/miui/home/launcher/LauncherMenu$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/LauncherMenu$1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherMenu$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$1$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/LauncherMenu$1;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherMenu$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu$1$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/LauncherMenu$1;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/LauncherMenu$1;->$r8$lambda$D3AGfzB47XLM-wJ7vqv82i4ESVo(Lcom/miui/home/launcher/LauncherMenu$1;Ljava/lang/String;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
