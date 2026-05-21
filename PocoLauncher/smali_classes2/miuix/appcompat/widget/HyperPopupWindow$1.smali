.class Lmiuix/appcompat/widget/HyperPopupWindow$1;
.super Ljava/lang/Object;
.source "HyperPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/HyperPopupWindow;->show(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/HyperPopupWindow;


# direct methods
.method public static synthetic $r8$lambda$NkH3JAxOYRjLl7KJ_Rh7rJXUREA(Lmiuix/appcompat/widget/HyperPopupWindow$1;Landroid/widget/ListAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lmiuix/appcompat/widget/HyperPopupWindow$1;->lambda$onItemClick$0(Landroid/widget/ListAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wy55KO2YT298zjoG5lvCEb2kRJ4(Lmiuix/appcompat/widget/HyperPopupWindow$1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$1;->lambda$onItemClick$1(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Landroid/widget/ListAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 138
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    sget p3, Lmiuix/appcompat/R$id;->tag_secondary_popup_menu_item_head:I

    if-ne p2, p3, :cond_0

    .line 139
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$900(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    return-void

    .line 142
    :cond_0
    instance-of p2, p1, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;

    if-eqz p2, :cond_1

    .line 143
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p2, p1, p4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$300(Lmiuix/appcompat/widget/HyperPopupWindow;Ljava/lang/Object;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 145
    iget-boolean p2, p2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isHeaderItem:Z

    if-nez p2, :cond_1

    .line 146
    move-object p2, p1

    check-cast p2, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;

    long-to-int p3, p5

    invoke-virtual {p2, p3}, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;->resumeSecondaryItemClickStatus(I)V

    .line 149
    :cond_1
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$700(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 150
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$700(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

    move-result-object p2

    invoke-interface {p1, p4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    invoke-interface {p2, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)V

    .line 152
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Landroid/view/View;)V
    .locals 0

    .line 160
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$900(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 115
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    invoke-virtual {p1, p4, p5}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->getSecondaryAdapterByItemId(J)Landroid/widget/BaseAdapter;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v1

    invoke-static {v1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    invoke-static {v0, v1, p3}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$300(Lmiuix/appcompat/widget/HyperPopupWindow;Ljava/lang/Object;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-boolean v1, v0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v1

    invoke-static {v1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    long-to-int p4, p4

    invoke-virtual {v1, p4, p3}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->resumePrimaryItemClickStatus(II)V

    :cond_0
    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 125
    iget-boolean p4, v0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    xor-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_2

    .line 127
    iget-object p4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {p4}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 131
    :cond_2
    :goto_0
    iget-object p4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p4

    if-nez p4, :cond_5

    if-eqz p1, :cond_3

    .line 134
    iget-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    new-instance p4, Lmiuix/appcompat/widget/HyperPopupWindow$SecondaryPopupWindowStrategy;

    invoke-direct {p4}, Lmiuix/appcompat/widget/HyperPopupWindow$SecondaryPopupWindowStrategy;-><init>()V

    invoke-static {p3, p4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$502(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    .line 135
    iget-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p3, p2, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$600(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 137
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p2

    new-instance p3, Lmiuix/appcompat/widget/HyperPopupWindow$1$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$1$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$1;Landroid/widget/ListAdapter;)V

    invoke-virtual {p2, p3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->setItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 155
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$700(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 156
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$700(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p2

    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    invoke-interface {p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)V

    .line 159
    :cond_4
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$800(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$id;->mask:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 160
    new-instance p2, Lmiuix/appcompat/widget/HyperPopupWindow$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lmiuix/appcompat/widget/HyperPopupWindow$1$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method
