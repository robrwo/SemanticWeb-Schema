use utf8;

package SemanticWeb::Schema::administrationRoute;

# ABSTRACT: A route by which this drug may be administered

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'administrationRoute';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A route by which this drug may be administered, e.g. 'oral'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
