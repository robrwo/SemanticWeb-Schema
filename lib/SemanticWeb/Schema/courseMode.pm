use utf8;

package SemanticWeb::Schema::courseMode;

# ABSTRACT: The medium or means of delivery of the course instance or the mode of study

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'courseMode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The medium or means of delivery of the course instance or the mode of
study, either as a text label (e.g. "online", "onsite" or "blended";
"synchronous" or "asynchronous"; "full-time" or "part-time") or as a URL
reference to a term from a controlled vocabulary (e.g.
https://ceds.ed.gov/element/001311#Asynchronous).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
