use utf8;

package SemanticWeb::Schema::pattern;

# ABSTRACT: A pattern that something has

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'pattern';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A pattern that something has, for example 'polka dot', 'striped', 'Canadian
flag'. Values are typically expressed as text, although links to controlled
value schemes are also supported.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
