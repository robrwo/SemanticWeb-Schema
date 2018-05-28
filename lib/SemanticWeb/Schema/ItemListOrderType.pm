package SemanticWeb::Schema::ItemListOrderType;

# ABSTRACT: Enumerated for values for itemListOrder for indicating how an ordered ItemList is organized.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Enumerated for values for itemListOrder for indicating how an ordered
ItemList is organized.




=cut


around json_ld_type => sub { return 'ItemListOrderType' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
