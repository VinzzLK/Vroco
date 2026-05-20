.class public final synthetic Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;

.field public final synthetic f$1:Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;

    iput-object p2, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;

    iget-object p0, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;

    invoke-static {v0, p0, p1}, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->$r8$lambda$Ym0eNn_2hJl7tomN-aFwElDkSvs(Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;Landroid/view/View;)V

    return-void
.end method
