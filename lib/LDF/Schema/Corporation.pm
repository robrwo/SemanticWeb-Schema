package LDF::Schema::Corporation;

# ABSTRACT: Organization: A business corporation.

use Moo;

extends qw/ LDF::Schema::Organization /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Organization: A business corporation.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<ticker_symbol>

C<tickerSymbol>

The exchange traded instrument associated with a Corporation object. The
tickerSymbol is expressed as an exchange and an instrument name separated
by a space character. For the exchange component of the tickerSymbol
attribute, we reccommend using the controlled vocaulary of Market
Identifier Codes (MIC) specified in ISO15022.


A ticker_symbol should be one of the following types:

=over

=item C<Str>

=back

=cut

has ticker_symbol => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Corporation' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { tickerSymbol => 'ticker_symbol' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Organization>

=cut

1;
