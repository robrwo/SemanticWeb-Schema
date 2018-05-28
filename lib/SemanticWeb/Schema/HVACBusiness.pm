package SemanticWeb::Schema::HVACBusiness;

# ABSTRACT: A business that provide Heating

use Moo;

extends qw/ SemanticWeb::Schema::HomeAndConstructionBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A business that provide Heating, Ventilation and Air Conditioning services.




=cut


around json_ld_type => sub { return 'HVACBusiness' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::HomeAndConstructionBusiness>

=cut

1;
