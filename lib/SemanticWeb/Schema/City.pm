package SemanticWeb::Schema::City;

# ABSTRACT: A city or town.

use Moo;

extends qw/ SemanticWeb::Schema::AdministrativeArea /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A city or town.




=cut


around json_ld_type => sub { return 'City' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::AdministrativeArea>

=cut

1;
