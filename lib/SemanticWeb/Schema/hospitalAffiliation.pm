use utf8;

package SemanticWeb::Schema::hospitalAffiliation;

# ABSTRACT: A hospital with which the physician or office is affiliated.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hospitalAffiliation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A hospital with which the physician or office is affiliated.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
