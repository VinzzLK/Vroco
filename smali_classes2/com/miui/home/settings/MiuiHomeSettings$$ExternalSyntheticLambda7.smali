.class public final synthetic Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/settings/MiuiHomeSettings;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda7;->f$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iput-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda7;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda7;->f$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$$ExternalSyntheticLambda7;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/miui/home/settings/MiuiHomeSettings;->$r8$lambda$UMu07OREykhZQCkHe317u7xdeq4(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
