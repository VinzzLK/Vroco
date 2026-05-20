.class public final synthetic Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;

.field public final synthetic f$1:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;Lcom/miui/home/launcher/Launcher;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda5;->f$0:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda5;->f$1:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda5;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda5;->f$0:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda5;->f$1:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda5;->f$2:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/LauncherModel;->$r8$lambda$mPJkjUfh0WotiRpCy0Rk1CV0hTw(Ljava/util/HashMap;Lcom/miui/home/launcher/Launcher;Ljava/util/function/Consumer;)V

    return-void
.end method
