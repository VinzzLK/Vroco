.class public final synthetic Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

.field public final synthetic f$1:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->$r8$lambda$sRH1nRr7-tByLC1ZLhmOLxcQTKU(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
