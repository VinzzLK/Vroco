.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda54;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda54;->f$0:Landroid/view/View;

    check-cast p1, Lcom/miui/home/launcher/IconContainer;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$lESebVusI9lAhOiao192_zJ-718(Landroid/view/View;Lcom/miui/home/launcher/IconContainer;)V

    return-void
.end method
