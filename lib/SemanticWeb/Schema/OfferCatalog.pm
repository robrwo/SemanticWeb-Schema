package SemanticWeb::Schema::OfferCatalog;

# ABSTRACT: An OfferCatalog is an ItemList that contains related Offers and/or further OfferCatalogs that are offeredBy the same provider.

use Moo;

extends qw/ SemanticWeb::Schema::ItemList /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An OfferCatalog is an ItemList that contains related Offers and/or further
OfferCatalogs that are offeredBy the same provider.




=cut


around json_ld_type => sub { return 'OfferCatalog' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::ItemList>

=cut

1;
