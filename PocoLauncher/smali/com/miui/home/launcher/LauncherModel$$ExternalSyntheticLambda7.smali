.class public final synthetic Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda7;->f$0:Ljava/util/function/Consumer;

    iput p2, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda7;->f$0:Ljava/util/function/Consumer;

    iget p0, p0, Lcom/miui/home/launcher/LauncherModel$$ExternalSyntheticLambda7;->f$1:I

    invoke-static {v0, p0}, Lcom/miui/home/launcher/LauncherModel;->$r8$lambda$CwKwONWWdnebFPsldRK-eEK_y2Y(Ljava/util/function/Consumer;I)V

    return-void
.end method
