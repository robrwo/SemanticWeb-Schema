package LDF::Schema::HowToTool;

# ABSTRACT: A tool used (but not consumed) when performing instructions for how to achieve a result.

use Moo;

extends qw/ LDF::Schema::HowToItem /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A tool used (but not consumed) when performing instructions for how to
achieve a result.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'HowToTool' }



=head1 SEE ALSO



L<LDF::Schema::HowToItem>

=cut

1;
