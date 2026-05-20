.class public final synthetic Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/settings/MiuiHomeSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iput-boolean p2, p0, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-boolean p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda3;->f$1:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->$r8$lambda$giaak77FgMiIE2DasQslUnsqXgI(Lcom/miui/home/settings/MiuiHomeSettings;ZLjava/lang/Boolean;)V

    return-void
.end method
