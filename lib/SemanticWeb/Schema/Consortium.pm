use utf8;

package SemanticWeb::Schema::Consortium;

# ABSTRACT: A Consortium is a membership <a class="localLink" href="http://schema

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'Consortium';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

A Consortium is a membership <a class="localLink"
href="http://schema.org/Organization">Organization</a> whose members are
typically Organizations.

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
