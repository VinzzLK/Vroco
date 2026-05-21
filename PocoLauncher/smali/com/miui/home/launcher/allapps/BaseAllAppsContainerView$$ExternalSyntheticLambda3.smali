.class public final synthetic Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex2/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    iput p2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;->f$1:I

    iput-boolean p3, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    iget v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;->f$1:I

    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;->f$2:Z

    check-cast p1, Ljava/util/TreeSet;

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->$r8$lambda$YhD_3qG-e06UAQI0CXb85pwv6sg(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;IZLjava/util/TreeSet;)V

    return-void
.end method
