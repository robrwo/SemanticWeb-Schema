package SemanticWeb::Schema::TheaterGroup;

# ABSTRACT: A theater group or company

use Moo;

extends qw/ SemanticWeb::Schema::PerformingGroup /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A theater group or company, for example, the Royal Shakespeare Company or
Druid Theatre.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'TheaterGroup' }



=head1 SEE ALSO



L<SemanticWeb::Schema::PerformingGroup>

=cut

1;
