package LDF::Schema::RadioClip;

# ABSTRACT: A short radio program or a segment/part of a radio program.

use Moo;

extends qw/ LDF::Schema::Clip /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A short radio program or a segment/part of a radio program.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'RadioClip' }



=head1 SEE ALSO



L<LDF::Schema::Clip>

=cut

1;
