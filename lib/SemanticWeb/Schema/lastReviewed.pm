use utf8;

package SemanticWeb::Schema::lastReviewed;

# ABSTRACT: Date on which the content on this web page was last reviewed for accuracy and/or completeness.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'lastReviewed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Date on which the content on this web page was last reviewed for accuracy
and/or completeness.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
